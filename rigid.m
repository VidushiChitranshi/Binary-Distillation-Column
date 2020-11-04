function dy = rigid(t,y)
dy = zeros(2,1);    % a column vector
dy(1) = 4*y(2) + y(1);
dy(2) = -y(1) * y(2);

