a = 1;
ai = a;
b = 1.5;
bi = b;
e = 0.05;
s = e;
xi = a;

while((bi-ai) > 2*e)
    xi = (ai+bi)/2;
    xp = xi+s/2;
    xm = xi-s/2;
    
    yp = yi(xp);
    ym = yi(xm);
    if(yp>ym)
        bi = xp;
    else
        ai = xm;
    end
end

display(xi);
display(yi(xi));

function [y] = yi(x)
y = 0.5 * x.^7 - x.^3 + 0.5 * x.^2 - x;
end

