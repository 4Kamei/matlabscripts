
i = imread('galaxy_2.jpeg');

i = double(i)/255;

out = processImage(i);

figure;
image(out);
axis image;