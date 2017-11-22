function data = getDataNumeric(a1,a2)

a1 = 0.63147/a1;
a2 = 0.63147/a2;

lower = 0;
upper = 10;
step = 0.05;

dataPoints = (upper - lower)/step + 1;

x = 1;
y = 0;
z = 0;

data = zeros(dataPoints, 4);

time = lower;

for i=1:dataPoints
    decayedX = x*(1 - exp(-a1 * step));
    decayedY = y*(1 - exp(-a2 * step));
    data(i, 1) = time;
    data(i, 2) = x;
    data(i, 3) = y;
    data(i, 4) = z;
    time = time + step;
    x = x - decayedX;
    y = y - decayedY + decayedX;
    z = z + decayedY;
    
end

