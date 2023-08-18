function ng = solveNonogram(ngSize,rowKeys,colKeys,method)

switch method
    case 'brute'
        ng = nonogramBruteForce(ngSize,rowKeys,colKeys);
    otherwise
        error('methods not implemented yet.')
end