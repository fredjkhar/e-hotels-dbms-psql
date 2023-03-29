-- /* generated by chatGPT */

-- INSERT INTO hotel_group VALUES (1, 'Hilton', 10, '123-456-7890', 'hilton@example.com', 5, '123 Main St', 'New York', 'NY', '10001', 'USA');
-- INSERT INTO hotel_group VALUES (2, 'Marriott', 15, '555-555-5555', 'marriott@example.com', 10, '456 Broadway', 'Chicago', 'IL', '60611', 'USA');
-- INSERT INTO hotel_group VALUES (3, 'InterContinental', 5, '999-999-9999', 'intercontinental@example.com', 3, '789 Main St', 'Los Angeles', 'CA', '90001', 'USA');
-- INSERT INTO hotel_group VALUES (4, 'Hyatt', 8, '111-111-1111', 'hyatt@example.com', 4, '1 Park Ave', 'Miami', 'FL', '33131', 'USA');
-- INSERT INTO hotel_group VALUES (5, 'Accor', 12, '222-222-2222', 'accor@example.com', 6, '345 Fifth Ave', 'Houston', 'TX', '77002', 'USA');

-- INSERT INTO hotel VALUES (1, 'Hilton New York', 123, '6th Ave', 'New York', 'NY', 'USA', '10001', '212-555-1212', 'nyhilton@example.com', 4.5, 1);
-- INSERT INTO hotel VALUES (2, 'Hilton Chicago', 455, 'N Park Dr', 'Chicago', 'IL', 'USA', '60611', '312-555-1212', 'chihilton@example.com', 4.2, 1);
-- INSERT INTO hotel VALUES (3, 'InterContinental Los Angeles', 900, 'Wilshire Blvd', 'Los Angeles', 'CA', 'USA', '90017', '213-555-1212', 'laintercon@example.com', 4.6, 3);
-- INSERT INTO hotel VALUES (4, 'Hyatt Regency Miami', 400, 'SE 2nd Ave', 'Miami', 'FL', 'USA', '33131', '305-555-1212', 'miamihyatt@example.com', 4.1, 4);
-- INSERT INTO hotel VALUES (5, 'Novotel Houston', 520, 'Texas Ave', 'Houston', 'TX', 'USA', '77002', '713-555-1212', 'novotelhouston@example.com', 4.3, 5);

-- INSERT INTO room VALUES (1, 150.00, 'City view', 2, NULL, 1);
-- INSERT INTO room VALUES (2, 175.00, 'Ocean view', 2, NULL, 1);
-- INSERT INTO room VALUES (3, 200.00, 'Park view', 4, 'TV not working', 2);
-- INSERT INTO room VALUES (4, 225.00, 'City view', 4, NULL, 2);
-- INSERT INTO room VALUES (5, 250.00, 'City view', 4, NULL, 2);
-- INSERT INTO room VALUES (6, 175.00, 'City view', 2, 'Bathroom faucet broken', 3);
-- INSERT INTO room VALUES (7, 200.00, 'City view', 2, NULL, 3);
-- INSERT INTO room VALUES (8, 225.00, 'City view', 4, NULL, 4);
-- INSERT INTO room VALUES (9, 250.00, 'City view', 4, NULL, 4);
-- INSERT INTO room VALUES (10, 175.00, 'City view', 2, 'Bed sheets dirty', 5);
-- INSERT INTO room VALUES (11, 200.00, 'City view', 2, NULL, 5);
-- INSERT INTO room VALUES (12, 225.00, 'City view', 4, NULL, 5);

-- INSERT INTO employee VALUES (111111111, 'Smith', 'John', 123, '6th Ave', 'New York', 'NY', 'USA', '10001', 50000, '212-555-1234', 'jsmith@example.com', 'Front Desk Agent', 0.0, 1);
-- INSERT INTO employee VALUES (222222222, 'Johnson', 'Lisa', 123, '6th Ave', 'New York', 'NY', 'USA', '10001', 55000, '212-555-2345', 'ljohnson@example.com', 'Housekeeping Manager', 5.5, 1);
-- INSERT INTO employee VALUES (333333333, 'Garcia', 'Jose', 455, 'N Park Dr', 'Chicago', 'IL', 'USA', '60611', 45000, '312-555-3456', 'jgarcia@example.com', 'Food and Beverage Supervisor', 0.0, 2);
-- INSERT INTO employee VALUES (444444444, 'Lee', 'David', 900, 'Wilshire Blvd', 'Los Angeles', 'CA', 'USA', '90017', 60000, '213-555-4567', 'dlee@example.com', 'General Manager', 0.0, 3);
-- INSERT INTO employee VALUES (555555555, 'Chen', 'Jessica', 400, 'SE 2nd Ave', 'Miami', 'FL', 'USA', '33131', 40000, '305-555-5678', 'jchen@example.com', 'Front Desk Agent', 2.0, 4);
-- INSERT INTO employee VALUES (666666666, 'Jackson', 'Michael', 520, 'Texas Ave', 'Houston', 'TX', 'USA', '77002', 75000, '713-555-6789', 'mjackson@example.com', 'Sales Manager', 0.0, 5);



/* generated by chatGPT */


INSERT INTO hotel_group VALUES (1, 'Hilton', 10, '123-456-7890', 'hilton@example.com', 5, '123 Main St', 'New York', 'NY', '10001', 'USA');
INSERT INTO hotel_group VALUES (2, 'Marriott', 15, '555-555-5555', 'marriott@example.com', 10, '456 Broadway', 'Chicago', 'IL', '60611', 'USA');
INSERT INTO hotel_group VALUES (3, 'InterContinental', 5, '999-999-9999', 'intercontinental@example.com', 3, '789 Main St', 'Los Angeles', 'CA', '90001', 'USA');
INSERT INTO hotel_group VALUES (4, 'Hyatt', 8, '111-111-1111', 'hyatt@example.com', 4, '1 Park Ave', 'Miami', 'FL', '33131', 'USA');
INSERT INTO hotel_group VALUES (5, 'Accor', 12, '222-222-2222', 'accor@example.com', 6, '345 Fifth Ave', 'Houston', 'TX', '77002', 'USA');


INSERT INTO hotel_group (id, name, hotels_nbr, phone_nbr, email, unit_nbr, address, city, province, postal_code, country)
VALUES
(1, 'Marriott International', 7000, '1-800-535-4028', 'guest.services@marriott.com', 23, '10400 Fernwood Road', 'Bethesda', 'Maryland', '20817', 'United States'),
(2, 'Hilton Worldwide Holdings Inc.', 6000, '1-800-445-8667', 'guest_assistance@hilton.com', 18, '7930 Jones Branch Drive', 'McLean', 'Virginia', '22102', 'United States'),
(3, 'InterContinental Hotels Group', 5600, '1-800-621-0555', 'customer.care@ihg.com', 13, '3 Ravinia Drive', 'Atlanta', 'Georgia', '30346', 'United States'),
(4, 'AccorHotels', 4200, '+33 (0)1 45 38 86 00', 'contact@accor.com', 21, '82 rue Henri Farman', 'Issy-les-Moulineaux', 'Ile-de-France', '92130', 'France'),
(5, 'Wyndham Hotels & Resorts', 9200, '1-866-996-7937', 'customer.service@wyndham.com', 27, '22 Sylvan Way', 'Parsippany', 'New Jersey', '07054', 'United States');


INSERT INTO hotel (hotel_id, name, street_number, street, city, province, country, postal_code, phone_number, email, rating, hotel_group_id)
VALUES
(1, 'Marriott Marquis New York', 1535, 'Broadway', 'New York', 'New York', 'United States', '10036', '1-212-398-1900', 'marriottmarquisnyc@marriott.com', 4.3, 1),
(2, 'Hilton San Francisco Union Square', 333, 'O\'Farrell Street', 'San Francisco', 'California', 'United States', '94102', '1-415-771-1400', 'sanfrancisco@hilton.com', 4.1, 2),
(3, 'InterContinental Chicago Magnificent Mile', 505, 'North Michigan Avenue', 'Chicago', 'Illinois', 'United States', '60611', '1-312-944-4100', 'chicagomagnificentmile@ihg.com', 4.6, 3),
(4, 'Sofitel Sydney Darling Harbour', 12, 'Darling Drive', 'Sydney', 'New South Wales', 'Australia', '2000', '+61 2 8388 8888', 'H9729@sofitel.com', 4.7, 4),
(5, 'Wyndham Grand Rio Mar Puerto Rico Golf & Beach Resort', 6000, 'Rio Mar Boulevard', 'Rio Grande', 'Puerto Rico', 'United States', '00745', '1-787-888-6000', 'customerservice@wyndham.com', 4.4, 5);

INSERT INTO room (room_number, price, view, capacity, problems, hotel_id)
VALUES
(1001, 150.00, 'City view', 2, NULL, 1),
(2001, 225.50, 'Bay view', 4, 'Leaky faucet', 2),
(3001, 180.00, 'Lake view', 2, NULL, 3),
(4001, 350.00, 'Harbour view', 3, 'Broken lamp', 4),
(5001, 275.00, 'Ocean view', 2, 'Clogged sink', 5),
(1002, 125.00, 'City view', 2, NULL, 1),
(2002, 185.00, 'Bay view', 4, NULL, 2),
(3002, 170.00, 'Lake view', 2, NULL, 3),
(4002, 325.00, 'Harbour view', 3, NULL, 4),
(5002, 250.00, 'Ocean view', 2, 'TV not working', 5),
(1003, 110.00, 'City view', 2, NULL, 1),
(2003, 200.00, 'Bay view', 4, 'No hot water', 2),
(3003, 160.00, 'Lake view', 2, NULL, 3),
(4003, 310.00, 'Harbour view', 3, NULL, 4),
(5003, 240.00, 'Ocean view', 2, NULL, 5);

INSERT INTO employee (employee_NAS, last_name, first_name, street_number, street, city, province, country, postal_code, salary, phone_number, email, role, overtime, hotel_id)
VALUES
(123456789, 'Smith', 'John', 123, 'Main St', 'Toronto', 'ON', 'Canada', 'M4C 1A4', 50000.00, '416-123-4567', 'jsmith@example.com', 'Front Desk Clerk', 2.50, 1),
(234567890, 'Johnson', 'Emma', 456, 'Queen St', 'Vancouver', 'BC', 'Canada', 'V6C 3T8', 60000.00, '604-234-5678', 'ejohnson@example.com', 'Hotel Manager', 1.75, 2),
(345678901, 'Garcia', 'Maria', 789, 'Broadway', 'New York', 'NY', 'USA', '10012', 55000.00, '212-345-6789', 'mgarcia@example.com', 'Housekeeper', 3.00, 3),
(456789012, 'Lee', 'David', 345, 'King St', 'Montreal', 'QC', 'Canada', 'H3A 1A7', 45000.00, '514-456-7890', 'dlee@example.com', 'Concierge', 2.00, 4),
(567890123, 'Wang', 'Amy', 678, 'Alberta St', 'Calgary', 'AB', 'Canada', 'T2P 4T4', 55000.00, '403-567-8901', 'awang@example.com', 'Chef', 1.50, 5),
(678901234, 'Davis', 'Robert', 987, 'Pine St', 'Seattle', 'WA', 'USA', '98101', 65000.00, '206-789-0123', 'rdavis@example.com', 'Maintenance Manager', 1.25, 1),
(789012345, 'Chen', 'Jenny', 543, 'Spring St', 'Toronto', 'ON', 'Canada', 'M5T 2G3', 50000.00, '647-890-1234', 'jchen@example.com', 'Front Desk Clerk', 2.75, 2),
(890123456, 'Martinez', 'Luis', 876, 'Grand Ave', 'Los Angeles', 'CA', 'USA', '90012', 60000.00, '213-901-2345', 'lmartinez@example.com', 'Housekeeping Manager', 1.50, 3),
(901234567, 'Nguyen', 'Trung', 321, 'Main St', 'Vancouver', 'BC', 'Canada', 'V6A 1C3', 50000.00, '778-012-3456', 'tnguyen@example.com', 'Front Desk Supervisor', 2.00, 4),
(012345678, 'Gomez', 'Sophia', 654, 'Broadway', 'New York', 'NY', 'USA', '10003', 55000.00, '212-345-6789', 'sgomez@example.com', 'Housekeeper', 2.50, 5);


INSERT INTO client (NAS_client, last_name, first_name, age, street_number, street, city, province, country, postal_code, phone_number, email, registrationDate, password)
VALUES
(123456789, 'Smith', 'John', 35, 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V 1J5', '416-123-4567', 'john.smith@example.com', '2022-01-01', 123456),
(987654321, 'Doe', 'Jane', 28, 456, 'Broadway', 'New York', 'New York', 'USA', '10001', '212-987-6543', 'jane.doe@example.com', '2022-02-15', 654321),
(456789123, 'Garcia', 'Maria', 42, 789, 'Elm St', 'Los Angeles', 'California', 'USA', '90012', '213-456-7890', 'maria.garcia@example.com', '2022-03-20', 789123),
(789123456, 'Lee', 'David', 52, 321, 'Oak St', 'Vancouver', 'British Columbia', 'Canada', 'V6H 3X3', '604-321-6543', 'david.lee@example.com', '2022-04-05', 456789),
(321654987, 'Wang', 'Yan', 25, 654, 'Prince St', 'Montreal', 'Quebec', 'Canada', 'H3C 1K7', '514-654-9876', 'yan.wang@example.com', '2022-05-10', 147258);

INSERT INTO location (location_id, startDate, endDate, NAS_client, NAS_employe, nbr)
VALUES
(1, '2022-06-01', '2022-06-10', 123456789, 987654321, 101),
(2, '2022-07-05', '2022-07-15', 789123456, 654987321, 202),
(3, '2022-08-10', '2022-08-20', 456789123, 321654987, 303),
(4, '2022-09-15', '2022-09-25', 321654987, 789123456, 404),
(5, '2022-10-20', '2022-10-30', 987654321, 456789123, 505);

INSERT INTO reservation (reservation_id, startDate, endDate, NAS_client, nbr, hotel_id)
VALUES
(1, '2022-06-01', '2022-06-10', 123456789, 101, 1),
(2, '2022-07-05', '2022-07-15', 789123456, 202, 2),
(3, '2022-08-10', '2022-08-20', 456789123, 303, 3),
(4, '2022-09-15', '2022-09-25', 321654987, 404, 4),
(5, '2022-10-20', '2022-10-30', 987654321, 505, 5);


INSERT INTO hotel VALUES (1, 'Hilton New York', 123, '6th Ave', 'New York', 'NY', 'USA', '10001', '212-555-1212', 'nyhilton@example.com', 4.5, 1);
INSERT INTO hotel VALUES (2, 'Hilton Chicago', 455, 'N Park Dr', 'Chicago', 'IL', 'USA', '60611', '312-555-1212', 'chihilton@example.com', 4.2, 1);
INSERT INTO hotel VALUES (3, 'InterContinental Los Angeles', 900, 'Wilshire Blvd', 'Los Angeles', 'CA', 'USA', '90017', '213-555-1212', 'laintercon@example.com', 4.6, 3);
INSERT INTO hotel VALUES (4, 'Hyatt Regency Miami', 400, 'SE 2nd Ave', 'Miami', 'FL', 'USA', '33131', '305-555-1212', 'miamihyatt@example.com', 4.1, 4);
INSERT INTO hotel VALUES (5, 'Novotel Houston', 520, 'Texas Ave', 'Houston', 'TX', 'USA', '77002', '713-555-1212', 'novotelhouston@example.com', 4.3, 5);

INSERT INTO room VALUES (1, 150.00, 'City view', 2, NULL, 1);
INSERT INTO room VALUES (2, 175.00, 'Ocean view', 2, NULL, 1);
INSERT INTO room VALUES (3, 200.00, 'Park view', 4, 'TV not working', 2);
INSERT INTO room VALUES (4, 225.00, 'City view', 4, NULL, 2);
INSERT INTO room VALUES (5, 250.00, 'City view', 4, NULL, 2);
INSERT INTO room VALUES (6, 175.00, 'City view', 2, 'Bathroom faucet broken', 3);
INSERT INTO room VALUES (7, 200.00, 'City view', 2, NULL, 3);
INSERT INTO room VALUES (8, 225.00, 'City view', 4, NULL, 4);
INSERT INTO room VALUES (9, 250.00, 'City view', 4, NULL, 4);
INSERT INTO room VALUES (10, 175.00, 'City view', 2, 'Bed sheets dirty', 5);
INSERT INTO room VALUES (11, 200.00, 'City view', 2, NULL, 5);
INSERT INTO room VALUES (12, 225.00, 'City view', 4, NULL, 5);

INSERT INTO employee VALUES (111111111, 'Smith', 'John', 123, '6th Ave', 'New York', 'NY', 'USA', '10001', 50000, '212-555-1234', 'jsmith@example.com', 'Front Desk Agent', 0.0, 1);
INSERT INTO employee VALUES (222222222, 'Johnson', 'Lisa', 123, '6th Ave', 'New York', 'NY', 'USA', '10001', 55000, '212-555-2345', 'ljohnson@example.com', 'Housekeeping Manager', 5.5, 1);
INSERT INTO employee VALUES (333333333, 'Garcia', 'Jose', 455, 'N Park Dr', 'Chicago', 'IL', 'USA', '60611', 45000, '312-555-3456', 'jgarcia@example.com', 'Food and Beverage Supervisor', 0.0, 2);
INSERT INTO employee VALUES (444444444, 'Lee', 'David', 900, 'Wilshire Blvd', 'Los Angeles', 'CA', 'USA', '90017', 60000, '213-555-4567', 'dlee@example.com', 'General Manager', 0.0, 3);
INSERT INTO employee VALUES (555555555, 'Chen', 'Jessica', 400, 'SE 2nd Ave', 'Miami', 'FL', 'USA', '33131', 40000, '305-555-5678', 'jchen@example.com', 'Front Desk Agent', 2.0, 4);
INSERT INTO employee VALUES (666666666, 'Jackson', 'Michael', 520, 'Texas Ave', 'Houston', 'TX', 'USA', '77002', 75000, '713-555-6789', 'mjackson@example.com', 'Sales Manager', 0.0, 5);

