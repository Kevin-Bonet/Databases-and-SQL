--data type examples (most common):
INT --Whole numbers
DECIMAL(M,N) --Decimal Numbers - Exact Value
--M is total digits, N refers to amount of digits after the decimal 
--example M = 5, N = 2 could store 123.45
VARCHAR(1) --String of text of length 1
BLOB --BInary Large Object, Stores large data
DATA --'YYYY-MM-DD'
TIMESTAMP --'YYYY-MM-DD HH:MM:SS' - used for recording

--CREATING TABLES:
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

--another way to establish a primary key
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

--CHECKING TABLE:
DESCRIBE student;
--generic replacement for DESCRIBE, since this isint MySQL
SELECT column_name, data_type, character_maximum_length, column_default, is_nullable
FROM information_schema.columns
WHERE table_name = 'student';

--deleting table:
DROP TABLE student;

--altering tables:
ALTER TABLE student ADD gpa DECIMAL(3, 2);
ALTER TABLE student DROP COLUMN gpa;

/*
You can select with mouse and right click to get an option to run the selected
query
*/