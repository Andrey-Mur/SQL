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
)