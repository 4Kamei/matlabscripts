function ret = polynomialFit(data, order)


x = data(:, 1);
y = data(:, 2);
N = length(x);

X = zeros(order + 1, order + 1);
Y = zeros(order + 1, 1);

for i=1:order+1
    for j=1:order+1
        X(i, j) = sum(x .^ (i + j -2));
    end
    Y(i) = sum(times(x .^ (i - 1), y));
end

solution = X\Y;

ret.sol = flipud(solution);

ret.yfit = arrayfun(@(x) polyval(ret.sol, x), x);


%r2 = 1/N * sum( (y - const.yfit) .^ 2 );

%const.r = sqrt(r2);
end
