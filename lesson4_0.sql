/*Field constraints*/

/*
RPIMARY KEY:
NOT NULL 不可以是空的
UNIQUE  不可以重覆
DEFAULT 新增時，可以不設
*/


DROP TABLE students ;

CREATE TABLE students
(
	students_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	major VARCHAR(20) UNIQUE
);

SELECT *
FROM students

INSERT INTO students VALUES(2,'小廣','國文')
RETURNING * ;

/*指定新增欄位*/
INSERT INTO students(name , major) VALUES('小美','公民')
RETURNING * ;

/*新增多筆*/
INSERT INTO students(name , major) 
VALUES('小博','英文'),('小文','數學')
RETURNING * ;