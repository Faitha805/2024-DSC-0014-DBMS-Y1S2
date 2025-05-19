-- Creating table finance
CREATE TABLE tblFinance(
student_id INT,
tuition_fee INT,
administration_fee INT,
exams_fee INT,
medical_fee INT
);
INSERT INTO tblFinance(student_id, tuition_fee, administration_fee, exams_fee, medical_fee)
VALUES (235, 30000, 5000, 3000, 4000);

-- Students in Y1S1 with tuition fees
CREATE TABLE tblStudent(
student_name VARCHAR(256),
student_id INT,
birthdate DATE,
year VARCHAR(100),
mobile_no VARCHAR(100)
);
INSERT INTO tblstudent(student_name, student_id, birthdate, year, mobile_no)
VALUES ('Jane', 235, '1987/12/1', 'Y1S2', '0722245321')
;

SELECT tblFinance.tuition_fee, tblStudent.student_name, tblFincance.stident_id 
FROM tblFinance 
CROSS JOIN tblFinance.stident_id=tblStudent.student_id;

SELECT student_name, tuition_fee
FROM tblFinance
WHERE year='Y1S1';

-- Details of students who have paid tuition fee greater than or equal to 30000. 
SELECT student_name, student_id, year, tuition_fee
FROM tblStudent
WHERE tuition_fee >= 30000;

-- New record to students table
INSERT INTO tblStudent(student_name, birthdate, year, mobile_no)
VALUES ('Dan', '2001/4/20', 'Y1S2', '0723456123');

-- Changing a student's name with student id 26 to nelson
UPDATE tblStudent
SET student_name = 'Nelson'
WHERE student_id = 26;

-- calculate highest tuition fee and lowest tuition fee
SELECT MAX(tuition_fee)
AS 'Highest Amount'  
FROM tblFinance;

SELECT MIN(tuition_fee)
AS 'Lowest Amount'
FROM tblFinance;
