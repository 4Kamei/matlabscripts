function e = plotVariedFile(filename)

d = csvread(filename);
N = length(d(:, 1));
for i=1:N
    data = getData(d(i, 1), d(i, 2));
    csvwrite(strjoin(filename, '_data_', num2str(i), '.csv'), data);
end

end