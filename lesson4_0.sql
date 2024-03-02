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
	major VARCHAR(20) NOT NULL
);

SELECT *
FROM students