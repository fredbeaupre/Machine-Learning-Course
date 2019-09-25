function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% set of "try" values iterated over
vals = [0.01 0.03 0.1 0.3 1 3 10];
result = [];
min = [0 0 0];

for c = 1:length(vals)
	for sig = 1:length(vals)
		model = svmTrain(X, y, vals(c), @(x1,x2) gaussianKernel(x1,x2, vals(sig)));
		predictions = svmPredict(model, Xval);
		result = [result; mean(double(predictions ~= yval)) vals(c) vals(sig) ];
	endfor
endfor

% choose minimum values
min = sortrows(result)(1,:);
C = min(2);
sigma = min(3);



% =========================================================================

end
