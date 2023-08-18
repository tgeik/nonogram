function ng = solveNonogram(ngSize,keyRows,keyCols,method)

switch method
    case 'brute'
        ng = nonogramBruteForce(ngSize,keyRows,keyCols);
    else
        error('methods not implemented yet.')
end