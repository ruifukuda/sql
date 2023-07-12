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

# 1
INSERT INTO emps(name, age, dep_id)
VALUES('山田', 22, 1);

カラム全部入力するなら省略できる、オートインクリメントに0入れる
INSERT INTO emps
VALUES(0, '田中', 34, 3);

# 2
SELECT * FROM deps;

# 3
UPDATE emps SET age = age + 1
WHERE id = 5;

# 4
DELETE FROM sales
WHERE id = 16;

# 5
SELECT * FROM sales
ORDER BY sale DESC;

# 6
SELECT name AS 名前,age AS 年齢 FROM emps
ORDER BY age DESC; 

# 7
SELECT * FROM emps
WHERE age >= 30 AND dep_id <> 4;

# 8
SELECT * FROM emps
WHERE name NOT LIKE '%中%';

# 9 
SELECT * FROM sales
WHERE s_date BETWEEN '2017-09-01' AND '2017-09-03';

# 10 日付と名前と売上を表示
SELECT s.s_date,e.name, s.sale 
FROM sales AS s
JOIN emps AS e
ON s.emp_id = e.id;

# 11
SELECT dep AS 部署名,
CASE
WHEN id IN(1,2) THEN '本社ビル7F'
WHEN id IN(3,4) THEN '本社ビル6F'
ELSE '本社ビル5F'
END AS 所在地
FROM deps;

# 12
SELECT
CASE
WHEN age <= 23 THEN concat('(新)',name)
ELSE name
END AS 名前,
age AS 年齢
FROM emps;

# 13
SELECT 
s_date AS 日付,
concat(format(sale*1000,0), '円') AS 売上高
FROM sales
ORDER BY sale ASC;
