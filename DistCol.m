function xdot = DistCol( t,d )
%UNTITLED9 Summary of this function goes here
global N
for i=1:N+2
    xdot(1,i)=total(t,d);
end
for i=(N+3):(2*N+4)
    xdot(1,i)=(Component(t,d)- M(i-N-2).*total(t,d))./M(i-N-2);

end

