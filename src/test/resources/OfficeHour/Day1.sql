select * from employees;

SELECT * FROM JOBS;

--Task 1: get me job_title where job_title President, Sales Manager, Finance Manager
--OR
SELECT JOB_TITLE
FROM JOBS
WHERE JOB_TITLE='President' OR
      JOB_TITLE='Sales Manager' OR
      JOB_TITLE='Finance Manager';
--IN
SELECT JOB_TITLE
FROM JOBS
WHERE JOB_TITLE IN ('President' ,'Sales Manager' , 'Finance Manager');

--Task 2 : get me all country names except United States of America and Canada
SELECT COUNTRY_NAME
FROM COUNTRIES
WHERE COUNTRY_NAME NOT IN ('United States of America','Canada');

--Task 3: get me first name, last name, SALARY where salary 3000 to 10000
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 3000 AND 10000
ORDER BY SALARY DESC;
--AND
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY>=3000 AND SALARY <= 10000;

--Task 4: get me first name all employees where department id is null
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL ;

--Task 5: get me firstname all employees where department id is not null, HOW MANY PEOPLE IN THIS CATEGORY

SELECT FIRST_NAME
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL ;

SELECT COUNT(*)
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL ;

--Task 6: get me all employees whose first name starts with C
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'C%';

--Task 7: get me 5 letter first names where the middle char is z
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__z__';

--Task 8: get me first name where second char is u   _u%
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_u%';

--Task 9: get me all employees information based on who is making more salary to low salary
-- GET TOP 10 SALARIES
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
ORDER BY SALARY DESC;

SELECT FIRST_NAME,LAST_NAME,SALARY
FROM (SELECT FIRST_NAME,LAST_NAME,SALARY
      FROM EMPLOYEES
      ORDER BY SALARY DESC)
WHERE ROWNUM < 11;

--Task 10: get me all employees information order by first name asc
SELECT *
FROM EMPLOYEES
    ORDER BY FIRST_NAME ASC ;
select * from employees
order by first_name, last_name desc;

--Task 11: get me unique first name row numbers in a table : HOW MANY OF THEM
-- GET ME DUPLICATE NAMES : PIQ
SELECT COUNT(DISTINCT FIRST_NAME)
FROM EMPLOYEES;

SELECT FIRST_NAME, COUNT(*)
FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(*)>1;

-- FIRST GET ME EACH COUNTRY ID THEN FIND DUPLICATE COUNTRY IDs
SELECT * FROM LOCATIONS;
SELECT DISTINCT COUNTRY_ID
FROM LOCATIONS;

SELECT COUNTRY_ID, COUNT(*)
FROM LOCATIONS
GROUP BY COUNTRY_ID
HAVING COUNT(*)>1;

--Task 12: get me average salary of employees

SELECT ROUND(AVG(SALARY),2)
FROM EMPLOYEES;

--Task 13: get me min salary of employees: WHO MAKES THIS SALARY
SELECT MIN(SALARY)
FROM EMPLOYEES;

SELECT FIRST_NAME,LAST_NAME
FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY)
                FROM EMPLOYEES);

--Task 14: get me max salary of employees
SELECT MAX(SALARY)
FROM EMPLOYEES;

--Task 16: add @gmail.com and name new column to full_email
-- we have column aliases 'as' keyword , when we use joins in tables we table aliases
SELECT LOWER(FIRST_NAME) || '@gmail.com' as FULL_EMAIL
from EMPLOYEES;


