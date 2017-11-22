function val = integrate(f, a, b, n)
h = (a - b)/n;
val = f(b) + f(n * h);
sum1 = 0;
for i=1:n-1  
    sum1 = sum1 + 2 * f(i * h) ;
end
sum2 = 0;
for i=1:n
    sum2 = sum2 + 4 * f((i - 1/2) * h);
end
val = val + sum1 + sum2;
val = val * h/6;

end

