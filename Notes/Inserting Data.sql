--INSTERING DATA
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
/*
if I were to try to insert data with the same primary key i would get a 
duplicate error, for example trying VALUES(1, 'Jack', 'Biology'); twice
*/

--SEEING THE DATA ON THE TABLE
SELECT * FROM student;
