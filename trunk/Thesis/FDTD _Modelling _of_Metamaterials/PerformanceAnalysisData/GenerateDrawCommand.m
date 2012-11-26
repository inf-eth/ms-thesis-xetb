% Inputs:
% 1. X-YData: Arrays for plotting.
% 2. X-YMax: Absolute maximum values of x and y.
% 3. X-YScale: Maximum value of x and y axes in cm.
% 4. DrawOptions: Colour of graph and any optional arguments like line width.
function DrawCommand = GenerateDrawCommand(XData, YData, XMax, YMax, XScale, YScale, DrawOptions)
    DrawCommand = '\draw[';
    % Adding draw options.
    DrawCommand = sprintf('%s%s] ', DrawCommand, DrawOptions);
    for i=1:length(YData)
        if i == length(YData)
            DrawCommand = sprintf('%s(%2.2gcm,%2.2gcm);', DrawCommand, XScale*XData(i)/XMax, YScale*YData(i)/YMax);
        else
            DrawCommand = sprintf('%s(%2.2gcm,%2.2gcm) -- ', DrawCommand, XScale*XData(i)/XMax, YScale*YData(i)/YMax);
        end
    end
end

