a = 1;
ai = a;
b = 1.5;
bi = b;
e = 0.05;
s = e;
xi = a;
while((bi-ai) > 2*e)
    c = (3 - 5^(0.5))/2*(bi-ai) + ai;
    d = (5^(0.5)-1)/2*(bi-ai) + ai;
    yc = yi(c);
    yd = yi(d);
    if(yc<yd)
        bi = d;
    else
        ai = c;
    end
end

display(ai);
display(yi(ai));

function [y] = yi(x)
y = 1/2*x.^7 - x.^3 + 1/2*x.^2 - x;
end
