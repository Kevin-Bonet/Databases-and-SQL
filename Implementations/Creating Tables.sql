CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

SELECT column_name, data_type, character_maximum_length, column_default, is_nullable
FROM information_schema.columns
WHERE table_name = 'student';

ALTER TABLE student ADD gpa DECIMAL(3, 2);

ALTER TABLE student DROP COLUMN gpa;

DROP TABLE student;
