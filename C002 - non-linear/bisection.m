function root = bisection(f, x0, x1)
if x1 > x0
    t = x0;
    x0 = x1;
    x1 = t;
end

interval = x0 - x1;

intervalSize = eps*100;

while interval > intervalSize
    
    x3 = (x0 + x1)/2;
    if sign(f(x3)) == sign(f(x0))
        x0 = x3;
    else
        x1 = x3;
    end
    interval = x0 - x1;
end

root = (x0 + x1)/2;

end
