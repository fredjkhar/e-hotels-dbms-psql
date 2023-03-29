INSERT INTO hotel_group VALUES (1, 'Hilton', 10, '123-456-7890', 'hilton@example.com', 5, '123 Main St', 'New York', 'NY', '10001', 'USA');
INSERT INTO hotel_group VALUES (2, 'Marriott', 15, '555-555-5555', 'marriott@example.com', 10, '456 Broadway', 'Chicago', 'IL', '60611', 'USA');
INSERT INTO hotel_group VALUES (3, 'InterContinental', 5, '999-999-9999', 'intercontinental@example.com', 3, '789 Main St', 'Los Angeles', 'CA', '90001', 'USA');
INSERT INTO hotel_group VALUES (4, 'Hyatt', 8, '111-111-1111', 'hyatt@example.com', 4, '1 Park Ave', 'Miami', 'FL', '33131', 'USA');
INSERT INTO hotel_group VALUES (5, 'Accor', 12, '222-222-2222', 'accor@example.com', 6, '345 Fifth Ave', 'Houston', 'TX', '77002', 'USA');

INSERT INTO hotel VALUES (1, 'Hilton New York', 123, '6th Ave', 'New York', 'NY', 'USA', '10001', '212-555-1212', 'nyhilton@example.com', 4.5, 4, 150, 1);
INSERT INTO hotel VALUES (2, 'Hilton Chicago', 455, 'N Park Dr', 'Chicago', 'IL', 'USA', '60611', '312-555-1212', 'chihilton@example.com', 4.2, 5, 200, 1);
INSERT INTO hotel VALUES (3, 'InterContinental Los Angeles', 900, 'Wilshire Blvd', 'Los Angeles', 'CA', 'USA', '90017', '213-555-1212', 'laintercon@example.com', 4.6, 4, 120, 3);
INSERT INTO hotel VALUES (4, 'Hyatt Regency Miami', 400, 'SE 2nd Ave', 'Miami', 'FL', 'USA', '33131', '305-555-1212', 'miamihyatt@example.com', 4.1, 3, 200, 4);
INSERT INTO hotel VALUES (5, 'Novotel Houston', 520, 'Texas Ave', 'Houston', 'TX', 'USA', '77002', '713-555-1212', 'novotelhouston@example.com', 4.3, 4, 400, 5);

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