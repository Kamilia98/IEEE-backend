-- https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
SELECT
    H.hacker_id,
    H.name
FROM
    Hackers H,
    Difficulty D,
    Challenges C,
    Submissions S
WHERE
    S.challenge_id = C.challenge_id
    AND c.difficulty_level = d.difficulty_level
    AND d.score = s.score
    AND s.hacker_id = H.hacker_id
GROUP by
    H.hacker_id,
    name
HAVING
    COUNT(S.challenge_id) > 1
ORDER BY
    COUNT(S.challenge_id) DESC,
    H.hacker_id;