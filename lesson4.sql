INSERT INTO emps(name, age, dep_id)
VALUE('山田',22,1);

SELECT * FROM deps;

UPDATE emps SET age = age + 1
WHERE id = 5;

DELETE FROM sales
WHERE id = 16;

SELECT * FROM sales
ORDER BY sale DESC;

SELECT name,age FROM emps
ORDER BY age DESC;

SELECT * FROM emps
WHERE age>=30 AND dep_id <> 4;

SELECT * FROM emps
WHERE name NOT LIKE '%中%';

SELECT * FROM sales
WHERE s_date BETWEEN 2017-09-01 AND 2017-09-03;

21.2017年9月の個人売上高ランキングTOP5を取得せよ。取得項目は名前,売上。並びは売上降順とする
SELECT 
e.name AS 名前,
sum(s.sale) AS 売上
FROM sales AS s
JOIN emps AS e
ON s.emp_id = e.id
WHERE s.s_date BETWEEN '2017-09-01' AND '2017-09-30'
GROUP BY 名前 
ORDER BY 売上 DESC LIMIT 5; 

22.20代、30代、40代の売上合計を取得せよ。取得項目は年代、売上。並びは年代昇順とする。
SELECT 
CASE
WHEN age>=20 AND age<=29 THEN '20代'
WHEN age>=30 AND age<=39 THEN '30代'
WHEN age>=40 AND age<=49 THEN '40代'
END AS 年代,
sum(s.sale) AS 売上
FROM sales AS s
JOIN emps AS e
ON s.emp_id = e.id
GROUP BY 年代
ORDER BY 年代 ASC;

23.まだ売り上げを上げていない社員を抽出し、一番年齢の高い社員のデータを削除せよ
DELETE FROM emps
WHERE id = 
(SELECT id FROM 
	(SELECT * FROM emps
	WHERE id NOT IN(SELECT emp_id FROM sales)
	ORDER BY age DESC LIMIT 1) 
	AS t
);
