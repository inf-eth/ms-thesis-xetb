% Inputs:
% 1. X-YData: Arrays for plotting.
% 2. X-YMax: Absolute maximum values of x and y.
% 3. X-YScale: Maximum value of x and y axes in cm.
% 4. DrawOptions: Colour of graph and any optional arguments like line width.
function DrawCommand = GenerateDrawCommand(XData, YData, XMax, YMax, XScale, YScale, DrawOptions)
    DrawCommand = '\draw[';
    % Adding draw options.
    DrawCommand = sprintf('%s%s] ', DrawCommand, DrawOptions);
    for i=1:length(XData)
       DrawCommand = sprintf('%s(%gcm,%gcm) -- ', DrawCommand, XScale*XData(i)/XMax, YScale*YData(i)/YMax);
    end
    DrawCommand = sprintf('%s\b\b\b\b;', DrawCommand);
end

