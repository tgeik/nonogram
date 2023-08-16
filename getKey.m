function key = getKey(A)

% get the key of the current status of row or column. The current status
% can contain either 0, 1, or NaN.

A = A(:)'; % make a row vector
A(isnan(A)) = 0;
nz = find(A);
A = A(nz(1):nz(end)); % remove leading and trailing zeros
t = cumsum(A);
key = diff([0, t(A==0), t(end)]);