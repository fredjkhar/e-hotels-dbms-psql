DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS hotel;
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

CREATE TABLE hotel (
  hotel_id INT NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  street_number INT NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  province VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  postal_code VARCHAR(6) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  rating FLOAT NOT NULL,
  hotel_group_id INT NOT NULL,
  FOREIGN KEY (hotel_group_id) REFERENCES hotel_group(id)
);

CREATE TABLE room (
    room_number INT NOT NULL PRIMARY KEY,
    price DECIMAL(10,2) NOT NULL,
    view VARCHAR(255) NOT NULL,
    capacity INT NOT NULL,
    problems VARCHAR(255),
    hotel_id INT NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

