% Aleksander Kaminski
% Reading in a dataset and plots. Dataset in format of x, y, y_fit and
% plotted with constant error of 5

%Read CSV and split data for ease of use
M = csvread('chi2fit.data');
x = M(:, 1);
y = M(:, 2);
y_fit = M(:, 3);

error_value = 5;

disp(M)

N = length(y);

%Define N length array for errorbar 
err = error_value * ones(N, 1);

disp(strcat("Chi2 for dataset = ", num2str(chi2fit(y, y_fit, err))));

%Draw scatter of chi2 data
scatter(x, y);

%Plot on same graph
hold on;

%Plot errorbars without connecting lines (by omitting style option)
errorbar(x , y, err, 'vertical', '*');

%Line of fitted data, this time with connecting lines
plot(x, y_fit);

%Stop plotting on same graph
hold off;

