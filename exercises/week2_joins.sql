-- Query 1A: Select the names and job start dates of all employees who work for the department number 5.

select F_NAME, L_NAME, START_DATE from EMPLOYEES E INNER JOIN JOB_HISTORY H
on E.EMP_ID = H.EMPL_ID 
where E.DEP_ID=5;

-- Query 1B: Select the names, job start dates, and job titles of all employees
-- who work for the department number 5.
select F_NAME, L_NAME, JOB_TITLE 
from EMPLOYEES E INNER JOIN JOBS J
on E.JOB_ID=J.JOB_IDENT
where E.DEP_ID=5;

-- Query 2A: Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and
-- select employee id, last name, department id and department name for all employees
select EMP_ID, L_NAME, DEP_ID, DEP_NAME 
from EMPLOYEES E LEFT JOIN DEPARTMENTS D
on E.DEP_ID=D.DEPT_ID_DEP;

-- Query 2B: Re-write the query for 2A to limit the result set to include only the
-- rows for employees born before 1980.
select EMP_ID, L_NAME, DEP_ID, DEP_NAME, B_DATE
from EMPLOYEES E LEFT JOIN DEPARTMENTS D
on E.DEP_ID=D.DEPT_ID_DEP
where E.B_DATE like '197%';

-- Query 2C: Re-write the query for 2A to have the result set include all the
-- employees but department names for only the employees who were born before 1980.
select EMP_ID, L_NAME, DEP_ID, DEP_NAME, B_DATE
from EMPLOYEES E 
LEFT JOIN DEPARTMENTS D 
on E.DEP_ID=D.DEPT_ID_DEP
AND E.B_DATE like '197%';

-- Query 3A: Perform a Full Join on the EMPLOYEES and DEPARTMENT tables
-- and select the First name, Last name and Department name of all employees.
select F_NAME, L_NAME, DEP_NAME from 
EMPLOYEES as E FULL JOIN DEPARTMENTS as D
on E.DEP_ID=D.DEPT_ID_DEP;

-- Query 3B: Re-write Query 3A to have the result set include all employee
-- names but department id and department names only for male employees.
select F_NAME, L_NAME, DEP_NAME, DEPT_ID_DEP from 
EMPLOYEES as E FULL JOIN DEPARTMENTS as D
on E.DEP_ID=D.DEPT_ID_DEP
AND E.SEX='M'
