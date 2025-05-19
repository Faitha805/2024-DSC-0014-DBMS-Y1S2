-- Select data from all tables
SELECT * 
FROM Student;

SELECT *
FROM Course;

-- Insert data into students' table
INSERT INTO Student(code, stud_id, name)
VALUES('IMIS', 001, 'Damaris'),
	  ('BIT', 002, 'Okal'),
      ('BIT', 003, 'Kahuria'),
      ('CIT', 004, 'Mwangi');
      
-- Update data on a specific student e.g updating name of Kahuria to John
UPDATE Student
SET name=John
WHERE stud_id=003;

-- Delete a specific record
-- From one table
DELETE 
FROM student
WHERE code ='BIT';

-- From both tables
SELECT student.code, course.code
FROM student
CROSS JOIN course
WHERE student.code=course.code;
DELETE 
FROM student
WHERE code ='BIT';

-- 