CREATE TABLE students (id integer, first_name varchar(10), middle_name varchar(10), last_name varchar(10), age integer, location varchar(20));

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(1, 'Juan', 'Blank', 'Cruz', 18, 'Manila');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(2, 'John', 'Blank', 'Young', 20, 'Manila');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(3, 'Victor', 'Blank', 'Rivera', 21, 'Manila');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(4, 'Adrian', 'Blank', 'Co', 19, 'Laguna');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(5, 'Pau', 'Blank', 'Riosa', 22, 'Marikina');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(6, 'Paolo', 'Blank', 'Pascual', 25, 'Manila');

UPDATE students
SET first_name = 'Ana', middle_name = 'Cui', last_name = 'Cajocson', age = 25, location = 'Bulacan'
WHERE id = 1

DELETE FROM students WHERE id = 6;

                                                                                                                                         
                                                                                                                                         
SELECT COUNT (id)
FROM students

SELECT *
FROM students
WHERE location = 'Manila'

SELECT *
FROM students
ORDER BY age DESC;

=================







CREATE TABLE classrooms (id integer, student_id integer, section varchar(2));

INSERT INTO classrooms (id, student_id, section)
VALUES(1, 1, 'A');
INSERT INTO classrooms (id, student_id, section)
VALUES(2, 2, 'A');
INSERT INTO classrooms (id, student_id, section)
VALUES(3, 3, 'B');
INSERT INTO classrooms (id, student_id, section)
VALUES(4, 4, 'C');
INSERT INTO classrooms (id, student_id, section)
VALUES(5, 5, 'B');
INSERT INTO classrooms (id, student_id, section)
VALUES(6, 6, 'A');
INSERT INTO classrooms (id, student_id, section)
VALUES(7, 7, 'C');
INSERT INTO classrooms (id, student_id, section)
VALUES(8, 8, 'B');
INSERT INTO classrooms (id, student_id, section)
VALUES(9, 9, 'B');
INSERT INTO classrooms (id, student_id, section)
VALUES(10, 10, 'C');


##innerjoin ##leftjoin ##rightjoin ##fulljoin

select first_name, last_name, id, student_id, section
from students s
inner join classrooms c
on s.id = c.student_id


select first_name, last_name,  student_id, section
from students s
left join classrooms c
on s.id = c.student_id


select first_name, last_name,  student_id, section
from students s
right join classrooms c
on s.id = c.student_id

select first_name, last_name,  student_id, section
from students s
full join classrooms c
on s.id = c.student_id


