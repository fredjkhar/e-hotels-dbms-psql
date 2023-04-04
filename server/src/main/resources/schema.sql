DROP TABLE IF EXISTS reservation;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS employee;
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
  stars_nbr INT NOT NULL,
  min_price INT NOT NULL,
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

CREATE TABLE employee (
    employee_NAS INT NOT NULL PRIMARY KEY,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    street_number INT NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    province VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    postal_code VARCHAR(7) NOT NULL,
    salary FLOAT NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    overtime FLOAT NOT NULL,
    hotel_id INT NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id),
    CHECK (role IN ('gestionnaire', 'réceptionniste', 'administrateur' ,'cuisiner', 'nettoyeur'))
);

CREATE TABLE client(
      NAS_client INT NOT NULL PRIMARY KEY,
      first_name VARCHAR(255) NOT NULL,
      last_name VARCHAR(255) NOT NULL,
      age INT NOT NULL CHECK (age >= 18),
      street_num INT NOT NULL,
      street VARCHAR(255) NOT NULL,
      city VARCHAR(255) NOT NULL,
      province VARCHAR(255) NOT NULL,
      country VARCHAR(255) NOT NULL,
      postal_code VARCHAR(7) NOT NULL,
      phone_num VARCHAR(255) NOT NULL,
      email VARCHAR(255) NOT NULL,
      registration_date VARCHAR(255) NOT NULL,
      password VARCHAR(255) NOT NULL
);

CREATE TABLE location(

      location_id INT NOT NULL PRIMARY KEY,
      startDate DATE NOT NULL,
      endDate DATE NOT NULL,
      NAS_client INT NOT NULL,
      employee_NAS INT NOT NULL,
      room_number INT NOT NULL,
      FOREIGN KEY (NAS_client) REFERENCES client(NAS_client),
      FOREIGN KEY (employee_NAS) REFERENCES employee(employee_NAS),
      FOREIGN KEY (room_number) REFERENCES room(room_number)
);

CREATE TABLE reservation(

    reservation_id INT NOT NULL PRIMARY KEY,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    NAS_client INT NOT NULL,
    room_number INT NOT NULL,
    FOREIGN KEY (NAS_client) REFERENCES client(NAS_client),
    FOREIGN KEY (room_number) REFERENCES room(room_number)

);

