function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);
fprintf('number of rows of X: %d\n',m);
% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
idx=idx(:); %make sure we have a column vector for indices
for k=1:K
   fprintf('\nWorking on Labels for Centroid: %d ...\n',k);
   U=ones(m,1)*k ;
   [index,one]=find(U==idx);
   
   %fprintf('Matching label: %d \n', index);
   %N=sum(one); 
   centroids(k,:)=mean(X(index,:));
   
end






% =============================================================


end

