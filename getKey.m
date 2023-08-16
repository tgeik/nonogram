function key = getKey(A)

% get the key of the current status of row or column. The current status
% can contain either 0, 1, or NaN.

A = A(:)'; % make a row vector
A(isnan(A)) = 0;
t = cumsum(A);
key = diff([0, (t(A==0)), t(end)]);
key = key(key~=0); % remove zeros from the key
