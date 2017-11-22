%Aleksander Kaminski
%Chi2 function

%Chi2 function operates on 2 (or 3) vectors y and fitted_y (and delta_y)
% Params: 
%   y : Vector(number) : Y data set
%   fitted_y : Vector(number) : Fitted data for y
%   delta_y : Vector(number) or (number) : Error values for y

function chi2 = chi2fit(y, fitted_y, delta_y) 

%If the passed in delta_y is not a vector, create an length(y) length array 
if ~isvector(delta_y)
    delta_y = delta_y * ones(length(y), 1);
end


%If the passed y and fitted_y  aren't the same length, then raise error
if ~length(y) == length(fitted_y) || ~length(y) == length(delta_y)
    error("Cannot Chi^2 as input vectors of differing size")
    chi2 = 0;
    return;
end

%initial value
chi2 = 0;

l = length(y);

%for each 'row' in data set
for ind=1:l
    %chi^2 function
    t = (y(ind) - fitted_y(ind)) / delta_y(ind);
    %add to sum
    chi2 = chi2 + t ^ 2;
end

%return chi2 