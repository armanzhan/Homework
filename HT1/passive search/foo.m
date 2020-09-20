a = 1;
b = 1.5;
e = 0.05;
k = (b-a)/ceil(a+(b-a)/e);

xi = a:k:b;
disp(xi);

yi = 0.5 * xi.^7 - xi.^3 + 0.5 * xi.^2 - xi;

display(yi);
display(k);
mini = 1;
for i=1:length(yi)
    if yi(mini) > yi(i)
        mini = i;
    end
end
min = xi(mini);
display(min);
display(yi(mini));

plot(xi,yi);