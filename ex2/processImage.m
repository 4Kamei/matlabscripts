function [image_out] = processImage(image_in)
    Y = size(image_in, 1);
    X = size(image_in, 2);
   
    % Round the shift to the nearest integer above Y*tan(theta).  Use
    % tand(theta) since theta is in degrees and not radians.
    
    amplitude = 40;
    timePeriod = 100;  %One shift per x pixels
    frequency = 360/timePeriod;
    
    image_out = zeros(Y, X+2 * amplitude, 3);
    disp(X);
    for y=1:Y
        v = 1:X;
        v = v + amplitude + ceil(amplitude*sind(frequency * y));
        image_out(y, v, :) = image_in(y, :, :);
    end
end