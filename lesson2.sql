SELECT * FROM books;

INSERT INTO books (category, title, price, updated)
VALUES('漫画','アラレちゃん',400,'1978-12-11');

UPDATE books SET category='小説'
WHERE id=10;

DELETE FROM books 
WHERE title LIKE '%図鑑%';

SELECT title,price FROM books 
WHERE category='小説';

UPDATE books SET category='未分類'
WHERE category IS NULL;

INSERT INTO books(title, price)
VALUES('Java入門', '1800');

SELECT * FROM books
ORDER BY price DESC; 

SELECT count(*) FROM books;

SELECT * FROM books
WHERE price>=1000;

UPDATE books SET price = price-50
WHERE category = '漫画';

SELECT title,price FROM books
ORDER BY price DESC LIMIT 1;

SELECT avg(price) FROM books;

SELECT * FROM books
WHERE updated BETWEEN '1980-01-01' AND '1990-12-31'
ORDER BY updated ASC;

SELECT * FROM books
ORDER BY price ASC LIMIT 3;

SELECT title,price FROM books
ORDER BY price DESC LIMIT 1 OFFSET 1;

SELECT * FROM books
WHERE updated IS NOT NULL
AND category <> '小説';

SELECT * FROM books
WHERE category = '未分類';

SELECT category,avg(price) FROM books
GROUP BY category
ORDER BY avg(price) DESC;

SELECT category,sum(price) FROM books
GROUP BY category
HAVING sum(price) >= 5000;
