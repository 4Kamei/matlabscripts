function data = calcPop(a1, a2, t)
%since total population constant, we can work off precentages
n = 1;
n_x = n * exp(-a1 * t);
if abs(a1 - a2) < 0.000001
    %if very small difference, then assume they're the same
    n_y = n * a1 * exp(-a1 * t);
else
    n_y = n * a1 * (exp(-a1 * t) - exp(-a2 * t))/(a2 - a1);
    
end
data = zeros(1, 3);
data(1) = n_x;
data(2) = n_y;
data(3) = n - n_x - n_y;