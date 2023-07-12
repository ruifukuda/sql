SELECT title, price FROM books
ORDER BY price DESC LIMIT 1 OFFSET 1;

SELECT category,avg(price) FROM books
GROUP BY category
ORDER BY avg(price) DESC;

SELECT category,sum(price) FROM books
GROUP BY category
HAVING sum(price)>=5000;

SELECT 
DISTINCT e.name
FROM sales AS s
JOIN emps AS e
ON s.emp_id = e.id;

SELECT 
dep AS 部署名,
CASE
WHEN id IN(1,2) THEN '本社ビル7F'
WHEN id IN(3,4) THEN '本社ビル6F'
ELSE '本社ビル5F'
END AS 所在地
FROM deps;

SELECT
CASE
WHEN age <= 23 THEN concat('(新)',name)
ELSE name
END AS 名前,
age AS 年齢
FROM emps;

SELECT 
s_date AS 日付,
concat(format(sale*1000,0), '円')
FROM sales
