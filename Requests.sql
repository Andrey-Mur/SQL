*Вывести столбцы name и price из таблицы goods*

SELECT name, price FROM goods;

*Вывести уникальные значения в столбце date_of_sale из таблицы orders*

SELECT DISTINCT date_of_sale FROM orders

*Вывести все значения из таблицы orders сделанные в ноябре 2022 года*

SELECT * FROM orders
WHERE date_of_sale BETWEEN '2022-11-01' AND '2022-11-30'

*Вывести стобцы first_name и last_name из таблицы clients. Фамилии (last_name) должны заканчиваться на 'ов'*

SELECT first_name, last_name FROM clients
WHERE last_name like '%ов'

*Вывести стобцы first_name и last_name из таблицы clients. Имена (first_name) должны начинаться на 'О'*

SELECT first_name, last_name FROM clients
WHERE first_name like 'О%'

*Вывести столбец name из таблицы goods, где цена (price) больше или равна 80*

SELECT name FROM goods
WHERE price >= 80

*Вывести столбец name из таблицы goods и отсортировать по алфавиту*

SELECT name FROM goods
ORDER BY name

*Вывести столбцы client_id и amount из таблицы orders, где количество (amount) меньше или равен 2. Результат сгруппировать по столбцу client_id*

SELECT client_id, amount FROM orders
WHERE amount <= 2
GROUP BY client_id

*Вывести среднюю цену (price) из таблицы goods*

SELECT Avg(price) FROM goods

*Вывести дату продажи (date_of_sale), количество (amount), название продуктов (name)*

SELECT orders.date_of_sale, orders.amount, goods.name FROM orders
JOIN goods
	ON orders.good_id = goods.id


*Вывести дату продажи (date_of_sale), количество (amount), название продуктов (name). Результат сгруппировать по названию продуктов и отсортировать по дате продажи*

SELECT orders.date_of_sale, orders.amount, goods.name FROM orders
JOIN goods
	ON orders.good_id = goods.id
GROUP BY goods.name
ORDER BY orders.date_of_sale

*Вывести общую сумму всех звказов Олега Власова*

SELECT SUM(goods.price * orders.amount) AS 'sum' FROM orders
join goods
	ON orders.good_id = goods.id
WHERE orders.client_id = 3