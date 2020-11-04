function dmdt = total( t,d )
global R
global B
global NF
global F
global V M
Nf=NF+1;
global N
%t is time
%   d is (n+2 X 3) matrix. Column 1 is Liq flowrate, Column 2 is x, column 3 is y. D is d(N+2,1). B is d(1,1). 2
%   to N+1 are trays.

d= Equilibrium(d, 0.06);
M=Hydraulic(d);
d(1, N+2)= pcontrol(5, M(N+2), 3);
d(1,1)=pcontrol(5,M(1),4);
V=pcontrol(5, d(2,1),1);
R=pcontrol(5, d(2,N+2),2);
dmdt=zeros(1,N+2);
dmdt(1,N+2)= V-(R+d(1,N+2));
dmdt(1,N+2)= R- d(1,N+1);
for i=2:N
    dmdt(1,i)=d(1,i+1)-d(1,i);
end
dmdt(1,Nf)= d(1,Nf+1)-d(1,Nf)+F;
dmdt(1)=d(1,2)-V-B;


end

