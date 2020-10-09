a = 1;
ai = a;
b = 1.5;
bi = b;
e = 0.05;

if ~(foo_(a)>=0 && foo(b)<=0)
    c = ( foo(bi) - foo(ai) + foo_(ai) * ai - foo_(bi) * bi ) / ( foo_(ai) - foo_(bi) );
    while abs(bi - ai) > e && foo_(c) > e && abs(foo(bi) - foo(ai)) > e
        if foo_(c) > 0 
            bi = c;
        else
            ai = c;
        end
        c = ( foo(bi) - foo(ai) + foo_(ai) * ai - foo_(bi) * bi ) / ( foo_(ai) - foo_(bi) );
    end
end
display(c);
display(foo(c))

function [y] = foo(x)
y = 1/2*x.^7 - x.^3 + 1/2*x.^2 - x;
end

function [y] = foo_(x)
y = 7/2*x.^6 - 3*x.^2 + x - 1;
end