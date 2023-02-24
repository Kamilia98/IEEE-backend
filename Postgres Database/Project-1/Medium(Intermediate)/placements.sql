SELECT
    s.Name
FROM
    Students s,
    Friends f,
    Packages p,
    Packages pf
where
    s.ID = f.ID
    AND f.Friend_ID = pf.ID
    AND s.ID = p.ID
    AND p.Salary < pf.Salary
ORDER BY
    pf.Salary;

-- Another Solution


SELECT
    name
FROM
    students as s1
WHERE
    (
        (
            SELECT
                salary
            FROM
                Packages
            WHERE
                id = s1.id
        ) < (
            SELECT
                salary
            FROM
                Packages
            WHERE
                id = (
                    SELECT
                        friend_id
                    FROM
                        friends
                    WHERE
                        id = s1.id
                )
        )
    )
ORDER BY
    (
        SELECT
            SALARY
        FROM
            PACKAGES
        WHERE
            id = (
                SELECT
                    friend_id
                FROM
                    friends
                WHERE
                    id = s1.id
            )
    );