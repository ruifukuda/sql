SELECT 
title AS タイトル,
price AS 価格
FROM books;

SELECT 
DISTINCT category 
FROM books;

SELECT price,price+100,
'Hello' 
FROM books;

SELECT floor(120*1.08);

SELECT format(12345678,0);

SELECT 
title AS タイトル,
format(price,0) AS 価格
FROM books;

SELECT
title AS 書名,
category AS 分類,
CASE category
WHEN '雑誌' THEN '1F'
WHEN '漫画' THEN '1F'
ELSE '2F'
END AS 階
FROM books;

SELECT
title AS 書名,
price AS 価格,
CASE
WHEN price < 500 THEN 'えんぴつ'
WHEN price < 1000 THEN 'キーホルダー'
WHEN price < 3000 THEN 'ポスター'
ELSE '腕時計'
END AS プレゼント
FROM books;

SELECT
title,char_length(title)
FROM books;

INSERT INTO books
(title,price,updated)
VALUES
('SQL入門',2800,curdate());

SELECT  now();

SELECT
concat(title,':',price,'円')
FROM books;

SELECT
title,
coalesce(updated, '更新日未記入')
FROM books;

SELECT
title,price
FROM books
WHERE
price = 
(SELECT max(price) FROM books);

# 内部結合
SELECT * FROM cds
JOIN categories
ON cds.cat_id = categories.id;

#左結合
SELECT * FROM cds
LEFT JOIN categories
ON cds.cat_id = categories.id;

#右結合
SELECT * FROM cds
RIGHT JOIN categories
ON cds.cat_id = categories.id;

#取得カラムの指定
SELECT cds.title,categories.category,cds.price 
FROM cds
LEFT JOIN categories
ON cds.cat_id = categories.id;

#テーブルに別名(元の名前は使えない)
SELECT t1.title, t2.category, t1.price
FROM cds AS t1
LEFT JOIN categories AS t2
ON t1.cat_id = t2.id;
