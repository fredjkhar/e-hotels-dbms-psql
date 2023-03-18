

DROP TABLE IF EXISTS hotel_group;

CREATE TABLE hotel_group (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  hotels_nbr INT NOT NULL,
  phone_nbr VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  unit_nbr INT NOT NULL,
  address VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  province VARCHAR(255) NOT NULL,
  postal_code VARCHAR(6) NOT NULL,
  country VARCHAR(255) NOT NULL
);
