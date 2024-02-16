/* Redundant, wont work if i try to put in again
INSERT INTO student VALUES(1, 'JACK', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
*/
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');
--verified that i got table as i needed it to be
SELECT * FROM student;
--starting over to illustrate contraints
DROP TABLE student;
--illustrating NOT NULL and UNIQUE contraints
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20)UNIQUE,
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, "Chemistry");
/* VALUES(3, NULL, "Chemistry");
wont work if using "" since it talks about columns instead of an entry in major.
additionally, if using '', it still wont work due to writing NULL as a name and
having the NOT NULL CONSTRAINT
*/
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');
--Illustrating DEFAULT constraint
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);
--testing default
INSERT INTO student(student_id, name) VALUES(1, 'Jack');
--illustrating auto increment which is actually SERIAL in postgresql
CREATE TABLE student (
    student_id SERIAL,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);
--TESTING SERIAL
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');


