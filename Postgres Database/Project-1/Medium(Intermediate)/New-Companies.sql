-- https://www.hackerrank.com/challenges/the-company/problem

SELECT
    company.company_code,
    founder,
    count(distinct lead_manager_code),
    count(distinct senior_manager_code),
    count(distinct manager_code),
    count(distinct employee_code)
FROM
    Company
    JOIN employee on company.company_code = employee.company_code
group by
    company.company_code,
    founder
order by
    company.company_code;