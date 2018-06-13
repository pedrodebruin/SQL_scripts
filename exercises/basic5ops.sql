-- Task 0: Drop the table INSTRUCTOR from the database in case it already exists, so that we start from a clean state.
drop table INSTRUCTOR;

-- Task 1: Create the INSTRUCTOR table as defined above. Have the ins_id be the primary key, and ensure the lastname and firstname are not null.
CREATE TABLE INSTRUCTOR (
  ins_id int not null primary key,
  lastname varchar(25) not null,
  firstname varchar(25) not null,
  city varchar(25),
  country char(2)
 );

-- Task 2A: Insert one row into the INSTRUCTOR table for the the instructor Rav Ahuja.
INSERT INTO INSTRUCTOR 
(ins_id, lastname, firstname, city, country)
VALUES
(1, 'Ahuja','Rav', 'Toronto', 'CA');

-- Task 2B: Insert two rows at once in the INSTRUCTOR table for instructors Raul Chong and Hima Vasudevan.
INSERT INTO INSTRUCTOR 
(ins_id, lastname, firstname, city, country)
VALUES
(2, 'Chong','Raul', 'Toronto', 'CA'),
(3, 'Vasudevan','Hima', 'Chicago', 'US');

-- Task 3: Select all rows from the INSTRUCTOR table.
SELECT * from INSTRUCTOR;

-- Task 3B: Select the firstname, lastname and country where the city is Toronto
SELECT firstname, lastname, country from INSTRUCTOR WHERE city='Toronto';

-- Task 4: Update the row for Rav Ahuja and change his city to Markham.
UPDATE INSTRUCTOR SET city = 'Markham' WHERE firstname = 'Rav' AND lastname = 'Ahuja';

-- Task 5: Delete the row for Raul Chong from the table.
DELETE FROM INSTRUCTOR WHERE firstname='Raul' AND lastname='Chong';

-- Task 5B: Retrieve all rows in the INSTRUCTOR table
SELECT * FROM INSTRUCTOR
