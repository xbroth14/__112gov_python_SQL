
DROP TABLE students ;

CREATE TABLE students
(
	students_id SERIAL PRIMARY KEY,
	name VARCHAR(20) ,
	major VARCHAR(20) ,
	score INT
);

INSERT INTO students VALUES(1,'小廣','國文','90');
INSERT INTO students VALUES(2,'小美','語文','80');
INSERT INTO students VALUES(3,'小花','數學','70');
INSERT INTO students VALUES(4,'小黑','公民','50');
INSERT INTO students VALUES(5,'小白','社會','100');
SELECT *
FROM students;

