INSERT INTO deps(dep)
VALUES('法務部');

INSERT INTO emps(name, age, dep_id)
VALUES('大谷', 28, 1);

SELECT * FROM emps;

SELECT name,age FROM emps;

SELECT name,age FROM emps
age <= 24;

UPDATE emps SET age = age + 1
WHERE id = 10;

DELETE FROM deps 
WHERE id = 6;

INSERT INTO deps(dep)
VALUES('法務部');

INSERT INTO deps (id,dep)
VALUES(6,'宣伝部');
