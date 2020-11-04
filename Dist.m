

global R V B F z d M N
R=5;
V=5;
B=5;
F=12;
z=0.2;
d=zeros(3, N+2);%d is (n+2 X 3) matrix. Column 1 is Liq flowrate, Column 2 is x, column 3 is y. D is 
%d(N+2,1). B is d(1,1).
%  2 to N+1 are trays.
N=10;
M=zeros(1, N+2);
Li=ones(1, N+2).*10;
Mi=3.33*0.2.*Li.^1.5;
xi=ones (1, N+2)*0.4;

Ini=[Mi,xi];
for i=2:N+1
    d(1,i)=10;
end
a=0.06; % relative volatility
for i=1:N+2
    d(2,i)=0.4;
end

    d=Equilibrium(d,a);

tspan=[0,1000];
[t, M]=ode15s(@DistCol, tspan, Ini);






