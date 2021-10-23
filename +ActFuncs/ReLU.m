function [g,gp] = ReLU(x)
%ReLU Summary of this function goes here
%   Detailed explanation goes here

if x<=0
    g = 0;
else
    g=x;
end



%g = max([0,x]);
if x<=0
    gp = 0;
else
    gp = 1;
end

