% Scaling function. Scales an array.
% Inputs:
% 1. Data: Arrays for plotting.
% 2. Max: Absolute maximum value.
% 3. Scale: Maximum value.
function Args = ScaleArray(Data, Max, Scale, Text, Precision)
    Args = '';
    for i=1:length(Data)
        Args = sprintf('%s{%2.3gcm/%s}', Args, Scale*Data(i)/Max, num2str(Text(i), Precision));
    end
end
