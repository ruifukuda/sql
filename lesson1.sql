INSERT INTO members(id,name,depart,age,updated)
VALUES(1,'山田太郎','営業部',40,'2014-12-01');

INSERT INTO members(name,age)
VALUES('鈴木さくら',25);

INSERT INTO members
VALUES(3,'佐藤次郎','人事部',35,'2015-01-15');

INSERT INTO members(name,depart,age)
VALUES('田中一郎','経理部',48),
('山口弘子','営業部',28),
('渡辺順二','人事部',58),
('中島博之','総務部',49),
('山下圭吾','経理部',23);

SELECT * FROM members;

SELECT name FROM members;

SELECT name,age FROM members;

SELECT * FROM members WHERE age=25;
SELECT * FROM members WHERE age>25;
SELECT * FROM members WHERE age>=25;

SELECT * FROM members WHERE age<>25;

SELECT * FROM members WHERE age>25 AND age <40;

SELECT * FROM members WHERE age > 25 OR updated <= '2015-01-15';

SELECT * FROM members 
WHERE updated BETWEEN '2015-01-15' AND '2015-02-15';

SELECT * FROM members WHERE depart IN('営業部','人事部');

SELECT * FROM members WHERE updated IS NULL;

SELECT * FROM members WHERE updated IS NOT NULL;

SELECT * FROM members WHERE name LIKE '鈴木%';

SELECT * FROM members WHERE name LIKE '%木%';

SELECT * FROM members WHERE name LIKE '%子';

SELECT * FROM members WHERE name NOT LIKE '%北%';

SELECT * FROM members ORDER BY age DESC;

SELECT * FROM members WHERE updated IS NOT NULL ORDER BY age ASC;

SELECT * FROM members ORDER BY age DESC, name ASC;

SELECT * FROM members ORDER BY age DESC LIMIT 3;

SELECT * FROM members ORDER BY age DESC LIMIT 3 OFFSET 1;

UPDATE members SET depart='人事部'
WHERE name = '鈴木さくら';

UPDATE members SET depart='人事部',age=age+1
WHERE name = '鈴木さくら';

DELETE FROM members WHERE id=3;

SELECT count(*) FROM members;

SELECT avg(age) FROM members;

SELECT max(age) FROM members;

SELECT min(age) FROM members;

SELECT sum(age) FROM members;

SELECT depart,avg(age) FROM members GROUP BY depart;

SELECT depart,avg(age) FROM members
GROUP BY depart
HAVING avg(age) >= 30;
