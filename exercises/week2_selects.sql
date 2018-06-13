-- The queries below use the data in 
-- Employees.csv, Departments.csv, Jobs.csv, Locations.csv, JobsHistory.csv 
-- which fill tables made with Script_Create_Tables.sql

-- Query 1: Retrieve all employees whose address is in Elgin,IL
select * from EMPLOYEES where ADDRESS like '%Elgin,%IL%';

-- Query 2: Retrieve all employees who were born during the 1970's.
select * from EMPLOYEES where B_DATE like '197%';

-- Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000 .
select * from EMPLOYEES where DEP_ID=5 AND SALARY between 60000 and 70000;

-- Query 4: Retrieve a list of employees ordered by department name, and within
-- each department ordered alphabetically in descending order by last name.
select F_NAME, L_NAME, DEP_NAME from EMPLOYEES, DEPARTMENTS
group by F_NAME, L_NAME, DEP_NAME
order by DEP_NAME, L_NAME desc;

-- Query 5: Retrieve the department number, the number of employees in the
-- department, and their average salary.
select DEP_ID, count(*) as N_EMP, AVG(SALARY) as MEAN_SALARY from EMPLOYEES 
group by DEP_ID;


