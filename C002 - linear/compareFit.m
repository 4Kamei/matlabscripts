function s = compareFit(n, p, e, order)
data = generateData(p, e, n);
fit = polynomialFit(data, order);
hold on
plot(data(:, 1), data(:, 2))
plot(data(:, 1), fit.yfit) 
fit.sol ./ transpose(p)