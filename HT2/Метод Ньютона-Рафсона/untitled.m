x0 = 1;
xi = x0;
e = 0.05;

while abs(foo_(xi)) > e
    xi = xi - foo_(xi)/foo__(xi);
end

display(xi)
display(foo(xi))

function [y] = foo(x)
y = 1/2*x.^7 - x.^3 + 1/2*x.^2 - x;
end

function [y] = foo_(x)
y = 7/2*x.^6 - 3*x.^2 + x - 1;
end

function [y] = foo__(x)
y = 7*6/2*x.^5 - 3*2*x + 1;
end


