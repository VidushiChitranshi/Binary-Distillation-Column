function [dxdt ] = diff1( t,x )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
dxdt=zeros(2,1);
dxdt(1)=4*x(1)-5*x(2)+1;
dxdt(2)=6*x(2)+x(1);
end

