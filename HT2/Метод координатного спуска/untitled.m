x0 = [2 6 9];
xi_ = x0;
e = 0.5;

for i=1:length(x0) 
        xi = min(xi_, i); 
            %display(xi)
end

while len2(xi,xi_) < e
    for i=1:length(x0) 
        xi = min(xi_, i); 
    end
    %display(xi)
end

display(X);
display(foo(X));

%-----------------------------------------------------------------------
function [Y] = min(X, i)
xi = X;
e = 0.05;
while abs(foo_i(xi, i)) > e
    xi(i) = xi(i) - foo_i(xi,i)/foo__i(xi,i);
end
X = xi;
Y = X;
end
%-----------------------------------------------------------------------
function [y] = foo(x)
y = exp(x(1)^2+x(2)^2+x(3)^2);
end
%-----------------------------------------------------------------------
function [y] = foo_i(x, i)
y = exp(x(1)^2+x(2)^2+x(3)^2) * 2 * x(i);
end
%-----------------------------------------------------------------------
function [y] = foo__i(x, i)
y = exp(x(1) ^ 2 + x(2)^2 + x(3)^2) * 2 + exp(x(1) ^ 2 + x(2) ^ 2 + x(3) ^ 2) * 4 * x(i)^2;
end
%-----------------------------------------------------------------------
function [y] = len2(a,b)
y = ((a(1) - b(1)) ^ 2 + (a(2) - b(2)) ^ 2 + (a(3) - b(3)) ^ 2);
end
%-----------------------------------------------------------------------
