function data = get_data(a_1_half, a_2_half)
    
a1 = 0.63147/a_1_half;
a2 = 0.63147/a_2_half;

lower = 0;
upper = 5;
step = 0.1;

dataPoints = (upper - lower)/step + 1;

time = lower;

data = zeros(dataPoints, 4);

for i=1:datapoints
    data(i, 1) = time;
    data(i, 2:4) = calcPop(a1, a2, time);
    time = time + step;
    
end

end
