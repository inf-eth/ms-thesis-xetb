% Generates ticks for input data.
% Inputs:
% 1. Max: Absolute maximum value.
% 2. Scale: Maximum value of scale in cm.
% 3. Tick: Tick size on scale in cm.
function Args = GenerateTicks(Max, Scale, Tick)
    Args = '';
    for i=0.0:Tick:Scale
        Args = sprintf('%s{%2.2fcm/%2.1f}', Args, i, i*Max/Scale);
    end
end
