-- https://www.hackerrank.com/challenges/symmetric-pairs/problem
    f1.x,
    f1.y
from
    functions as f1
    join functions as f2 on f1.x = f2.y
    and f1.y = f2.x
where
    (
        f1.x <> f1.y | | (
        select
            count(*)
        from
            functions
        where
            x = f1.x
            and y = f1.y
        ) > 1
    )
    and f1.x <= f1.y
group by
    f1.x,
    f1.y
order by
    f1.x;