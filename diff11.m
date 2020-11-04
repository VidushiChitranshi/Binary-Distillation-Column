x0=[1,1];

tspan=[0,20];
[t,x] = ode45(@diff,tspan,x0);