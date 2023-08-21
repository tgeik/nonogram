clc
ngSize = [3,3];
method = 'brute';

rowKeys = {[],[1],[1 1]};
colKeys = {[1],[1],[1]};
ng = solveNonogram(ngSize,rowKeys,colKeys,method)

rowKeys = {[],[],[]};
colKeys = {[],[],[]};
ng = solveNonogram(ngSize,rowKeys,colKeys,method)

rowKeys = {[],[1],[]};
colKeys = {[],[1],[]};
ng = solveNonogram(ngSize,rowKeys,colKeys,method)

rowKeys = {[2],[2],[]};
colKeys = {[],[2],[2]};
ng = solveNonogram(ngSize,rowKeys,colKeys,method)