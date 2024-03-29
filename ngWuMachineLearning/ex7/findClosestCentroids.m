function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

totalSum = [];

for i = 1:K
    repeatrow = repmat(centroids(i,:), size(X,1), 1);
    totalSum = [totalSum sum((X - repeatrow) .^ 2,2)];
end

[temp, idx] = min(totalSum');



% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% =============================================================

end

function [ result ] = helper2Ddistance( X1, X2 )

    % The aim of this file is to calculate 1D distance
    % the result is (theta' * X - Y)
    
    result = sum(  (X1 - X2) .* (X1 - X2)  , 2);
    
end %end of function


