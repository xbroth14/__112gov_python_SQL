CREATE TABLE IF NOT EXISTS student (
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20) ,
	majory VARCHAR(20)
);



DROP TABLE student;


CREATE TABLE IF NOT EXISTS artists
(
	id SERIAL PRIMARY KEY,
	name VARCHAR(90)
);

DROP TABLE artists;



CREATE TABLE IF NOT EXISTS city
(
	id SERIAL ,
	name VARCHAR(30),
	population VARCHAR(10),
	PRIMARY KEY(id)
);

DROP TABLE city;