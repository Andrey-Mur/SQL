CREATE TABLE goods
(
  id INTEGER PRIMARY KEY,
  name VARCHAR(30),
  price INTEGER
);

CREATE TABLE clients
(
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  phone INTEGER
);

CREATE TABLE orders
(
  id INTEGER,
  good_id INTEGER,
  client_id INTEGER,
  date_of_sale DATE,
  amount INTEGER,
  FOREIGN KEY (good_id) REFERENCES goods (id),
  FOREIGN KEY (client_id) REFERENCES clients (id)
);

Insert INTO goods Values (1, 'хлеб', 20),
(2, 'молоко', 40),
(3, 'торт', 200),
(4, 'чай', 50),
(5, 'кофе', 90),
(6, 'картофель', 30),
(7, 'колбаса', 120),
(8, 'сыр', 85),
(9, 'йогурт', 60),
(10, 'яблоки', 35);

Insert INTO clients Values (1, 'Иван', 'Котов', 7442530),
(2, 'Анна', 'Сидорова', 7473720),
(3, 'Олег', 'Власов', 7520365),
(4, 'Ольга', 'Иванова', 7854541),
(5, 'Александр', 'Ковалев', 7325874);

Insert INTO orders Values (1, 6, 2, '2022-11-01', 2),
(2, 1, 2, '2022-11-01', 3),
(3, 9, 2, '2022-11-01', 1),
(4, 4, 4, '2022-11-09', 1),
(5, 3, 4, '2022-11-09', 1),
(6, 5, 4, '2022-11-09', 1),
(7, 2, 1, '2022-11-14', 2),
(8, 8, 1, '2022-11-14', 3),
(9, 9, 1, '2022-11-14', 2),
(10, 10, 1, '2022-11-14', 1),
(11, 1, 5, '2022-11-23', 1),
(12, 4, 5, '2022-11-23', 2),
(13, 7, 5, '2022-11-23', 1),
(14, 8, 5, '2022-11-23', 3),
(15, 9, 5, '2022-11-23', 4),
(16, 3, 3, '2022-12-02', 2),
(17, 4, 3, '2022-12-02', 3),
(18, 5, 3, '2022-12-02', 2),
(19, 9, 3, '2022-12-02', 3),
(20, 10, 3, '2022-12-02', 2)
