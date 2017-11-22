d = input('Directory: ', 's');
images = dir(d);
%the first two files are . and ..
for i = 3:length(images)
    %find the name of each file
    name  = images(i).name;
    %if the name ends with . and then any of [jpeg, png, bmp, tiff, jpg]
    if regexp(name, '.*\.(jpe?g|png|gif|bmp|tiff)')
        data = imfinfo(name);gif
        disp(data);
    end
end