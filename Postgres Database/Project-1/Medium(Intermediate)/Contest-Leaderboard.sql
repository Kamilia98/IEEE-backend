-- https://www.hackerrank.com/challenges/contest-leaderboard/problem
SELECT
    hacker_id,
    name,
    sum(score)
from
    hackers as h
    join (
    SELECT
        hacker_id as id,
        MAX(score) as score
    FROM
        submissions
    GROUP BY
        hacker_id,
        challenge_id
    ORDER BY
        hacker_id
    ) as s on h.hacker_id = s.id
group by
    h.hacker_id,
    name
having
    sum(score) > 0
order by
    sum(score) desc,
    hacker_id;