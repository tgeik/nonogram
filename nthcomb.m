function c = nthcomb(x,n)

% c = nthcomb(x,n)
% Return the n-th combination of vectors stored in x. Equivalent to:
%   temp = combvec(x{:})';
%   c    = temp(n,:);
% Avoids the memory issues of the above, as temp can grow very large and
% it's not neccessary to keep.
%
% Input:  x: cell array of vectors to be combined
%         n: the desired combination
%
% Output: c: the n-th combination
%
% Example:
% x = {1:20,1:19,1:17};
% c = nthcomb(x,235); % c = [12 6 7]

lengths = cellfun(@(x) numel(x),x);
if n>prod(lengths)
    error("nthcomb: n is larger than the number of possible combinations.")
end

c = zeros(1,numel(x));
for iC = 1:numel(x)
    c(iC) = x{iC}(xmod(ceil(n/prod(lengths(1:iC-1))),lengths(iC)));
end
end

function r = xmod(a,b)
% modified modulo. Returns b instead of 0.
r = mod(a,b);
r(r==0) = b;
end