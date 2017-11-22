function s = drawImage(data)
n = length(data(:, 1));
filename = 'decay.gif';
names = categorical({'N_x', 'N_y', 'N_z'});
for i=1:n
    close
    h = figure('Visible', 'off');
    bar(names, data(i, 2:4));
    ylim([0 1]);
    xlabel(['time = ' num2str(data(i, 1), '%.1f years')]);
    frame = getframe(h);
    [A,map] = rgb2ind(frame2im(frame),256);
    if i == 1
        imwrite(A,map,filename,'gif','LoopCount',Inf,'DelayTime', 1);
    else
        imwrite(A,map,filename,'gif','WriteMode','append','DelayTime',0.05);
    end
    close(h) 
    [num2str(i/n * 100) ' : ' num2str(n)]
end