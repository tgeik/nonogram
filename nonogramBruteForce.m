function ng = nonogramBruteForce(ngSize,rowKeys,colKeys)

nRows = ngSize(1);
nCols = ngSize(2);

rowCombs = ff2n(nCols);
for iComb = 1:size(rowCombs,1)
    combKeys{iComb} = getKey(rowCombs(iComb,:));
end

for iRow = 1:nRows
    key = rowKeys{iRow};
    index = cellfun(@(x) isequal(x,key), combKeys, 'UniformOutput', true);
    candidates{iRow} = find(index);
end
solutions = combvec(candidates{:})';

for iSol = 1:size(solutions,1)
    sol = solutions(iSol,:);
    ng = nan(ngSize);
    for iRow = 1:nRows
        ng(iRow,:) = rowCombs(sol(iRow),:);
    end
    for iCol = 1:nCols
        cols{iCol} = getKey(ng(:,iCol));
    end
    if isequal(cols,colKeys)
        return
    end
%     disp(ng)
end