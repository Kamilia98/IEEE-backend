-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
SELECT n, ( IF(p is null, 'Root', IF((select count(*) from bst  where p = s1.n ) = 0,  'Leaf',  'Inner' )  ))
FROM
    bst AS s1
ORDER BY
    n;