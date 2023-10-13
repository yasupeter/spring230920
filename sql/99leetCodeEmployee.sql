#Write your MySQL query statement below
-- join
SELECT *
FROM employee e1 JOIN employee e2
    ON e1.managerId = e2.managerId
WHERE
    e1.salary > e2.salary;
-- 상관서브쿼리
SELECT name
FROM Employee e1
WHERE e1.salary > (SELECT e2.salary FROM employee WHERE e2.id = e1.managerId)
;