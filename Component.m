function dmxdt = Component( t,d )
global R B V NF F z M 
Nf=NF+1;
%t is time
%   d is (n+2 X 3) matrix. Column 1 is Liq flowrate, Column 2 is x, column 3 is y. D is d(N+2,1). B is d(1,1). 2
%   to N+1 are trays.
d=Equilibrium (d,0.06);
M=Hydraulic(d);

d(1, N+2)= pcontrol(5, M(N+2), 3);
d(1,1)=pcontrol(5,M(1),4);
V=pcontrol(5, d(2,1),1);
R=pcontrol(5, d(2,N+2),2);
dmxdt(1,N+2)=zeros(1,N+2);
dmxdt(1,N+2)=V*d(3,N+1)- (R+d(1,N+2))*d(2,N+2);
dmxdt(1,N+1)=R*d(2,N+2)-d(1,N+1)*d(2,N+1)+V*d(3,N)-V*d(3,N+1);
for i=2:N
    dmxdt(1,i)=d(1,i+1)*d(2,i+1)-d(1,i)*d(2,i)+V*d(3,i-1)-V*d(3,i);
end
dmxdt(1,Nf)=d(1,Nf+1)*d(2,Nf+1)-d(1,Nf)*d(2,Nf)+F*z+V*d(3,Nf-1)-V*d(3,Nf);
dmxdt(1,1)=d(1,2)*d(2,2)-V*y(3,1)-B*y(2,1);

end

