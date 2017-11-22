%compareFit(100, [1.5, -2.5, 0.7, -1.2], 0.01, 3) %first one
compareFit(100, [1, 2], 0.1, 1) %The linear fit IS the polynomial fit with
%order 1, no point trying to compare them as the linear fit just calls the
%polynomialFit function with order 1, since the process is _exactly_ the
%same as it is for the polynomialFit. 