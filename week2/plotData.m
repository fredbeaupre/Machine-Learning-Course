function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

#finding indices for positive and negative values
pos = find (y==1);
neg = find (y==0);

#plot neg and pos with exam 1 score as x axis,
#exam 2 as y axis
#pos as black crosses
#neg as yellow circles
plot(X(pos, 1), X(pos, 2), 'k+', 'Linewidth', 2, 'MarkerSize',7);
plot(X(neg, 1), X(neg, 2), 'ko','MarkerFaceColor','y','MarkerSize', 7);






% =========================================================================



hold off;

end
