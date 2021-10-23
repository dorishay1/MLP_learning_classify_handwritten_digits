function [Y] = predict_MLP(Net, X)
%PREDICT_MLP Get the output of a MLP for a given dataset

% Get the MLP's output for the given set
s = X;                         	% set the in[ut
for l = 1:length(Net)        	% forward pass
    % TODO 4: Add a bias neuron
    aa = size (s); % preparing vector size for inserting ones in the next line
    
    s = Net(l).g(Net(l).W*[s;ones(1,aa(2))]) ;	% get next layer's activities
end
Y = s;                         	% get the output

end

