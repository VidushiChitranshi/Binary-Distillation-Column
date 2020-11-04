function [ u ] = pcontrol( ysp, y, act )
%y is CV, Ysp is set point,uo is current value of MV
% act to specify which pcontrol
%1= R=f(Xd)
%2= V=f(Xb)
%3=D=f(Md)
%B= B=f(Mb)
err=ysp-y;
Kc=1;
u0=1;
if act==1
    u=u0-Kc*err;
elseif act==2
     u=u0+Kc*err;
elseif  act==3
     u=u0+Kc*err;
elseif act==4
     u=u0+Kc*err;
else
    print('invalid')


end

