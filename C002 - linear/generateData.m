function str = generateData(p, e, n)
intervalWidth = 10;
stepSize = intervalWidth/n;
x = -intervalWidth/2;
str = zeros(n, 2);
for i=1: n+1
    str(i, 1) = x;
    str(i, 2) = polyval(p, x) + e * randn();
    x = x + stepSize; 
end

