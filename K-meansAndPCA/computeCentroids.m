function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
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
%result = find(idx==2);
for i=1:K
  temp=[];
  temp=find(idx==i);
  Xtemp=zeros(size(temp,1),size(X,2));
  for j=1:size(temp,1)
    for k=1:size(X,2)
      Xtemp(j,k)=X(temp(j),k);
    endfor
  endfor
  total=zeros(1,size(X,2));
  total=sum(Xtemp,1);
  for k=1:size(X,2)
    centroids(i,k)= (total(1,k))/(size(temp,1));
  endfor
  %centroid(i,:)=sum(Xtemp,1)./size(temp,1);
endfor







% =============================================================


end

