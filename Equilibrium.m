function d = Equilibrium( d, a )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
d1=d;
d2= a*d(2,:)./(1-(a-1)*d(2,:));
d1(3,:)=d2;
d=d1;
end

