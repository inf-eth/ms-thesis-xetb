% Inputs:
% 1. X-YData: Arrays for plotting.
% 2. X-YMax: Absolute maximum values of x and y.
% 3. X-YScale: Maximum value of x and y axes in cm.
% 4. DrawOptions: Colour of graph and any optional arguments like line width.
function DrawCommand = GenerateDrawCommand(XData, YData, XMax, YMax, XScale, YScale, DrawOptions)
    DrawCommand = '';
    if YScale*YData(1)/YMax > 10
        return;
    end
    DrawCommand = '\draw[';
    % Adding draw options.
    DrawCommand = sprintf('%s%s] ', DrawCommand, DrawOptions);
    for i=1:length(XData)
        if i == length(XData)
            if YScale*YData(i)/YMax > 10
                DrawCommand = sprintf('%s;', DrawCommand);
                return;
            else
                DrawCommand = sprintf('%s -- (%2.2gcm,%2.2gcm);', DrawCommand, XScale*XData(i)/XMax, YScale*YData(i)/YMax);
            end
        else
            if i == 1
                DrawCommand = sprintf('%s(%2.2gcm,%2.2gcm)', DrawCommand, XScale*XData(i)/XMax, YScale*YData(i)/YMax);
            else
                if YScale*YData(i)/YMax > 10
                    DrawCommand = sprintf('%s;', DrawCommand);
                    return;                    
                else
                    DrawCommand = sprintf('%s -- (%2.2gcm,%2.2gcm)', DrawCommand, XScale*XData(i)/XMax, YScale*YData(i)/YMax);
                end
            end
        end
    end
end

