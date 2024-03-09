DROP TABLE IF EXISTS basket_a;
DROP TABLE IF EXISTS basket_b;

CREATE TABLE basket_a(
	a INT PRIMARY KEY,
	fruit_a VARCHAR(100) NOT NULL
);

CREATE TABLE basket_b(
	b INT PRIMARY KEY,
	fruit_b VARCHAR(100) NOT NULL
);

INSERT INTO basket_a (a, fruit_a)
VALUES
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (4, 'Cucumber');

INSERT INTO basket_b (b, fruit_b)
VALUES
    (1, 'Orange'),
    (2, 'Apple'),
    (3, 'Watermelon'),
    (4, 'Pear');

SELECT * FROM basket_a;
SELECT * FROM basket_b;


/*inner join*/
SELECT a,fruit_a,b,fruit_b
FROM basket_a INNER JOIN basket_b ON fruit_a = fruit_b


/*Left join*/
SELECT a.fruit_a,b.fruit_b
FROM basket_a a LEFT JOIN basket_b b ON a.fruit_a = b.fruit_b
WHERE b.fruit_b IS NULL

/*right join*/
SELECT a.fruit_a,b.fruit_b
FROM basket_a a right JOIN basket_b b ON a.fruit_a = b.fruit_b
WHERE a.fruit_a IS NULL


/*FULL OUTER join*/
SELECT a.fruit_a,b.fruit_b
FROM basket_a a FULL OUTER JOIN basket_b b ON a.fruit_a = b.fruit_b
WHERE a.fruit_a IS NULL OR b.fruit_b IS NULL
