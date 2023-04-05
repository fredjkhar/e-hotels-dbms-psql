
-- HotelGroup Insert Queries START
INSERT INTO hotel_group VALUES (1, 'Hilton', 10, '123-456-7890', 'hilton@example.com', 5, '123 Main St', 'New York', 'NY', '10001', 'USA');
INSERT INTO hotel_group VALUES (2, 'Marriott', 15, '555-555-5555', 'marriott@example.com', 10, '456 Broadway', 'Chicago', 'IL', '60611', 'USA');
INSERT INTO hotel_group VALUES (3, 'Novotel', 5, '999-999-9999', 'intercontinental@example.com', 3, '789 Main St', 'Los Angeles', 'CA', '90001', 'USA');
INSERT INTO hotel_group VALUES (4, 'Hyatt', 8, '111-111-1111', 'hyatt@example.com', 4, '1 Park Ave', 'Miami', 'FL', '33131', 'USA');
INSERT INTO hotel_group VALUES (5, 'Accor', 12, '222-222-2222', 'accor@example.com', 6, '345 Fifth Ave', 'Houston', 'TX', '77002', 'USA');
-- HotelGroup Insert Queries END



-- Hotel Insert Queries START
INSERT INTO hotel VALUES (1, 'Hilton Times Square', 234, 'West 42nd Street', 'New York', 'NY', 'USA', '10036', '212-840-8222', 'times.square@hilton.com', 4.5, 5, 200, 1);
INSERT INTO hotel VALUES (2, 'Hilton New York Fashion District', 152, 'West 26th Street', 'New York', 'NY', 'USA', '10001', '212-858-5888', 'fashion.district@hilton.com', 4.2, 4, 150, 1);
INSERT INTO hotel VALUES (3, 'Hilton Garden Inn Times Square', 790, 'Eighth Avenue', 'New York', 'NY', 'USA', '10019', '212-581-7000', 'times.square.garden@hilton.com', 4.1, 3, 120, 1);
INSERT INTO hotel VALUES (4, 'Hilton Garden Inn Central Park South', 237, 'West 54th Street', 'New York', 'NY', 'USA', '10019', '212-253-6000', 'central.park.garden@hilton.com', 4.0, 3, 110, 1);
INSERT INTO hotel VALUES (5, 'DoubleTree by Hilton Metropolitan - New York City', 569, 'Lexington Avenue', 'New York', 'NY', 'USA', '10022', '212-752-7000', 'doubletree.metropolitan@hilton.com', 4.0, 4, 180, 1);
INSERT INTO hotel VALUES (6, 'Hilton Garden Inn Chelsea', 121, 'West 28th Street', 'New York', 'NY', 'USA', '10001', '212-564-2181', 'chelsea.garden@hilton.com', 3.9, 3, 100, 1);
INSERT INTO hotel VALUES (7, 'Hilton Garden Inn New York/Manhattan-Chelsea', 121, 'West 28th Street', 'New York', 'NY', 'USA', '10001', '212-564-2181', 'manhattan.chelsea.garden@hilton.com', 4.1, 3, 110, 1);
INSERT INTO hotel VALUES (8, 'Homewood Suites by Hilton New York/Midtown Manhattan Times Square-South, NY', 312, 'West 37th Street', 'New York', 'NY', 'USA', '10018', '212-967-0003', 'homewood.suites@hilton.com', 4.5, 5, 150, 1);

INSERT INTO hotel VALUES (9, 'Marriott Marquis Chicago', 2121, 'South Prairie Avenue', 'Chicago', 'IL', 'USA', '60616', '312-824-0500', 'marquis.chicago@marriott.com', 4.6, 5, 250, 2);
INSERT INTO hotel VALUES (10, 'JW Marriott Chicago', 151, 'West Adams Street', 'Chicago', 'IL', 'USA', '60603', '312-660-8200', 'jw.marriott@marriott.com', 4.4, 4, 300, 2);
INSERT INTO hotel VALUES (11, 'Marriott Downtown Chicago Magnificent Mile', 540, 'North Michigan Avenue', 'Chicago', 'IL', 'USA', '60611', '312-836-0100', 'downtown.magnificent.mile@marriott.com', 4.3, 4, 220, 2);
INSERT INTO hotel VALUES (12, 'Marriott Chicago at Medical District/UIC', 625, 'South Ashland Avenue', 'Chicago', 'IL', 'USA', '60607', '312-491-1234', 'medical.district@marriott.com', 4.2, 3, 150, 2);
INSERT INTO hotel VALUES (13, 'AC Hotel Chicago Downtown', 630, 'North Rush Street', 'Chicago', 'IL', 'USA', '60611', '312-981-6600', 'ac.chicago.downtown@marriott.com', 4.2, 3, 180, 2);
INSERT INTO hotel VALUES (14, 'The Blackstone, Autograph Collection', 636, 'South Michigan Avenue', 'Chicago', 'IL', 'USA', '60605', '312-447-0955', 'the.blackstone@marriott.com', 4.4, 5, 220, 2);
INSERT INTO hotel VALUES (15, 'W Chicago - City Center', 172, 'West Adams Street', 'Chicago', 'IL', 'USA', '60603', '312-332-1200', 'w.chicago.city.center@marriott.com', 4.1, 4, 200, 2);
INSERT INTO hotel VALUES (16, 'Marriott Suites Chicago OHare', 6155, 'North River Road', 'Rosemont', 'IL', 'USA', '60018', '847-696-4400', 'suites.ohare@marriott.com', 4.1, 3, 150, 2);

INSERT INTO hotel VALUES (17, 'Novotel Los Angeles Century City at Beverly Hills', 2151, 'Avenue of the Stars', 'Los Angeles', 'CA', 'USA', '90067', '310-284-6500', 'losangeles@ihg.com', 4.4, 4, 280, 3);
INSERT INTO hotel VALUES (18, 'Novotel Los Angeles Downtown', 900, 'Wilshire Boulevard', 'Los Angeles', 'CA', 'USA', '90017', '213-688-7777', 'losangelesdowntown@ihg.com', 4.3, 4, 320, 3);
INSERT INTO hotel VALUES (19, 'Novotel Los Angeles Century City', 2151, 'Avenue of the Stars', 'Los Angeles', 'CA', 'USA', '90067', '310-284-6500', 'losangelescenturycity@ihg.com', 4.1, 3, 200, 3);
INSERT INTO hotel VALUES (20, 'Novotel San Francisco', 888, 'Howard Street', 'San Francisco', 'CA', 'USA', '94103', '415-616-6500', 'sanfrancisco@ihg.com', 4.5, 5, 350, 3);
INSERT INTO hotel VALUES (21, 'Novotel Mark Hopkins San Francisco', 999, 'California Street', 'San Francisco', 'CA', 'USA', '94108', '415-392-3434', 'markhopkins@ihg.com', 4.3, 4, 290, 3);
INSERT INTO hotel VALUES (22, 'Novotel San Diego', 901, 'Bayfront Court', 'San Diego', 'CA', 'USA', '92101', '619-501-9400', 'sandiego@ihg.com', 4.4, 4, 320, 3);
INSERT INTO hotel VALUES (23, 'Novotel San Francisco Bay', 401, 'Burlingame Avenue', 'Burlingame', 'CA', 'USA', '94010', '650-342-9200', 'sanfranciscobay@ihg.com', 4.2, 4, 250, 3);
INSERT INTO hotel VALUES (24, 'Novotel The Clement Monterey', 750, 'Cannery Row', 'Monterey', 'CA', 'USA', '93940', '831-375-4500', 'monterey@ihg.com', 4.5, 5, 330, 3);

INSERT INTO hotel VALUES (25, 'Hyatt Regency Miami', 400, 'SE 2nd Avenue', 'Miami', 'FL', 'USA', '33131', '305-358-1234', 'miami.regency@hyatt.com', 4.3, 4, 260, 4);
INSERT INTO hotel VALUES (26, 'Hyatt Place Miami Airport-East', 3549, 'Le Jeune Road', 'Miami', 'FL', 'USA', '33142', '305-929-0955', 'miamiairporteast.place@hyatt.com', 4.1, 2, 120, 4);
INSERT INTO hotel VALUES (27, 'Hyatt Regency Toronto', 370, 'King Street West', 'Toronto', 'ON', 'Canada', 'M5V1J9', '416-343-1234', 'toronto.regency@hyatt.com', 4.4, 5, 280, 4);
INSERT INTO hotel VALUES (28, 'Hyatt Place Niagara Falls', 6605, 'Niagara Falls Boulevard', 'Niagara Falls', 'NY', 'USA', '14304', '716-297-2121', 'niagarafalls.place@hyatt.com', 4.2, 3, 180, 4);
INSERT INTO hotel VALUES (29, 'Hyatt Place Edmonton Downtown', 9576, 'Jasper Avenue', 'Edmonton', 'AB', 'Canada', 'T5H3V3', '780-429-3900', 'edmonton.place@hyatt.com', 4.1, 3, 150, 4);
INSERT INTO hotel VALUES (30, 'Hyatt Place Montreal Downtown', 1255, 'Jeanne-Mance Street', 'Montreal', 'QC', 'Canada', 'H5B1E5', '514-419-6919', 'montreal.place@hyatt.com', 4.3, 3, 200, 4);
INSERT INTO hotel VALUES (31, 'Grand Hyatt New York', 109, 'East 42nd Street', 'New York', 'NY', 'USA', '10017', '212-883-1234', 'newyork.grand@hyatt.com', 4.2, 4, 350, 4);
INSERT INTO hotel VALUES (32, 'Hyatt Regency Vancouver', 655, 'Burrard Street', 'Vancouver', 'BC', 'Canada', 'V6C2R7', '604-683-1234', 'vancouver.regency@hyatt.com', 4.4, 4, 300, 4);

INSERT INTO hotel VALUES (33, 'Accor Houston Downtown', 200, 'Main St', 'Houston', 'TX', 'USA', '77002', '713-123-4567', 'novotelhouston@example.com', 4.5, 4, 120, 5);
INSERT INTO hotel VALUES (34, 'Accor Houston Galleria', 5000, 'Westheimer Rd', 'Houston', 'TX', 'USA', '77056', '713-234-5678', 'mercurehouston@example.com', 4.2, 3, 90, 5);
INSERT INTO hotel VALUES (35, 'Accor Houston Center', 6767, 'Bertner Ave', 'Houston', 'TX', 'USA', '77030', '713-345-6789', 'pullmanhouston@example.com', 4.8, 5, 180, 5);
INSERT INTO hotel VALUES (36, 'Accor Houston', 425, 'North Sam Houston Pkwy E', 'Houston', 'TX', 'USA', '77060', '281-123-4567', 'sofitelhouston@example.com', 4.6, 4, 150, 5);
INSERT INTO hotel VALUES (37, 'Accor New York Times Square', 226, 'W 52nd St', 'New York', 'NY', 'USA', '10019', '212-234-5678', 'novotelnyc@example.com', 4.3, 3, 100, 5);
INSERT INTO hotel VALUES (38, 'Accor Royal York', 100, 'Front St W', 'Toronto', 'ON', 'Canada', 'M5J1E3', '+1 416-368-2511', 'fairmonttoronto@example.com', 4.7, 4, 180, 5);
INSERT INTO hotel VALUES (39, 'Sheraton Vancouver Accor Wall Centre', 1088, 'Burrard St', 'Vancouver', 'BC', 'Canada', 'V6Z2R9', '+1 604-331-1000', 'sheratonvancouver@example.com', 4.5, 4, 150, 5);
INSERT INTO hotel VALUES (40, 'Accor Ottawa Inn', 33, 'Nicholas St', 'Ottawa', 'ON', 'Canada', 'K1N9M7', '+1 613-230-3033', 'novotelottawa@example.com', 4.2, 3, 100, 5);
-- Hotel Insert Queries END




-- Room Insert Queries START
INSERT INTO room VALUES (101, 150.00, 'City View', 1, 'Stained carpet', 1);
INSERT INTO room VALUES (201, 200.00, 'City View', 2, NULL, 1);
INSERT INTO room VALUES (301, 250.00, 'River View', 3, 'Noisy plumbing', 1);
INSERT INTO room VALUES (401, 300.00, 'Building View', 4, NULL, 1);
INSERT INTO room VALUES (501, 350.00, 'Park View', 5, NULL, 1);

INSERT INTO room VALUES (102, 125.00, 'Street View', 1, 'Broken lamp', 2);
INSERT INTO room VALUES (202, 175.00, 'City View', 2, NULL, 2);
INSERT INTO room VALUES (302, 225.00, 'Building View', 3, 'Leaky faucet', 2);
INSERT INTO room VALUES (402, 275.00, 'Street View', 4, 'Faulty air conditioning', 2);
INSERT INTO room VALUES (502, 325.00, 'City View', 5, NULL, 2);

INSERT INTO room VALUES (103, 130.00, 'Street View', 1, NULL, 3);
INSERT INTO room VALUES (203, 180.00, 'City View', 2, NULL, 3);
INSERT INTO room VALUES (303, 230.00, 'City View', 3, NULL, 3);
INSERT INTO room VALUES (403, 280.00, 'Building View', 4, 'Faulty air conditioning', 3);
INSERT INTO room VALUES (503, 330.00, 'Park View', 5, NULL, 3);

INSERT INTO room VALUES (104, 120.00, 'Street View', 1, NULL, 4);
INSERT INTO room VALUES (204, 170.00, 'City View', 2, NULL, 4);
INSERT INTO room VALUES (304, 220.00, 'City View', 3, NULL, 4);
INSERT INTO room VALUES (404, 270.00, 'Building View', 4, NULL, 4);
INSERT INTO room VALUES (504, 320.00, 'Park View', 5, NULL, 4);

INSERT INTO room VALUES (105, 150.00, 'City View', 1, NULL, 5);
INSERT INTO room VALUES (205, 200.00, 'Street View', 2, 'Leaky shower', 5);
INSERT INTO room VALUES (305, 250.00, 'City View', 3, 'Broken TV', 5);
INSERT INTO room VALUES (405, 300.00, 'Street View', 4, NULL, 5);
INSERT INTO room VALUES (505, 350.00, 'City View', 5, 'Clogged sink', 5);

INSERT INTO room VALUES (106, 120.00, 'City View', 1, NULL, 6);
INSERT INTO room VALUES (206, 170.00, 'Street View', 2, 'Noisy AC', 6);
INSERT INTO room VALUES (306, 220.00, 'City View', 3, 'Leaky faucet', 6);
INSERT INTO room VALUES (406, 270.00, 'Street View', 4, NULL, 6);
INSERT INTO room VALUES (506, 320.00, 'City View', 5, 'Faulty TV', 6);

INSERT INTO room VALUES (107, 100.00, 'City View', 1, NULL, 7);
INSERT INTO room VALUES (207, 150.00, 'Street View', 2, 'Broken TV', 7);
INSERT INTO room VALUES (307, 200.00, 'City View', 3, 'Leaky shower', 7);
INSERT INTO room VALUES (407, 250.00, 'Building View', 4, NULL, 7);
INSERT INTO room VALUES (507, 300.00, 'City View', 5, 'Faulty hairdryer', 7);

INSERT INTO room VALUES (108, 125.00, 'Street View', 1, 'Broken lamp', 8);
INSERT INTO room VALUES (208, 175.00, 'City View', 2, NULL, 8);
INSERT INTO room VALUES (308, 225.00, 'Building View', 3, 'Leaky faucet', 8);
INSERT INTO room VALUES (408, 275.00, 'Street View', 4, 'Faulty air conditioning', 8);
INSERT INTO room VALUES (508, 325.00, 'City View', 5, NULL, 8);

INSERT INTO room VALUES (109, 135.50, 'Park View', 1, 'Clogged shower drain', 9);
INSERT INTO room VALUES (209, 185.00, 'Ocean View', 2, NULL, 9);
INSERT INTO room VALUES (309, 225.50, 'Mountain View', 3, 'Noisy refrigerator', 9);
INSERT INTO room VALUES (409, 275.00, 'Park View', 4, 'Stained carpet', 9);
INSERT INTO room VALUES (509, 325.50, 'City View', 5, NULL, 9);

INSERT INTO room VALUES (110, 150.00, 'Beach View', 1, 'Broken drawer handle', 10);
INSERT INTO room VALUES (210, 195.50, 'Garden View', 2, NULL, 10);
INSERT INTO room VALUES (310, 235.00, 'Pool View', 3, 'Leaky showerhead', 10);
INSERT INTO room VALUES (410, 285.50, 'Ocean View', 4, 'Wobbly table', 10);
INSERT INTO room VALUES (510, 335.00, 'Beach View', 5, NULL, 10);

INSERT INTO room VALUES (111, 125.00, 'City View', 1, 'Squeaky bed', 11);
INSERT INTO room VALUES (211, 175.50, 'Park View', 2, NULL, 11);
INSERT INTO room VALUES (311, 215.00, 'River View', 3, 'Noisy air conditioning', 11);
INSERT INTO room VALUES (411, 255.50, 'City View', 4, 'Faulty TV', 11);
INSERT INTO room VALUES (511, 295.00, 'Park View', 5, NULL, 11);

INSERT INTO room VALUES (112, 145.50, 'Mountain View', 1, 'Leaky faucet', 12);
INSERT INTO room VALUES (212, 195.00, 'Lake View', 2, NULL, 12);
INSERT INTO room VALUES (312, 235.50, 'Forest View', 3, 'Broken lamp', 12);
INSERT INTO room VALUES (412, 285.00, 'Mountain View', 4, 'Clogged toilet', 12);
INSERT INTO room VALUES (512, 335.50, 'Lake View', 5, NULL, 12);

INSERT INTO room VALUES (113, 130.00, 'City View', 1, 'Stained bed sheets', 13);
INSERT INTO room VALUES (213, 180.50, 'Park View', 2, NULL, 13);
INSERT INTO room VALUES (313, 220.00, 'River View', 3, 'Noisy neighbors', 13);
INSERT INTO room VALUES (413, 260.50, 'City View', 4, 'Broken shower head', 13);
INSERT INTO room VALUES (513, 300.00, 'Park View', 5, NULL, 13);

INSERT INTO room VALUES (114, 140.50, 'Mountain View', 1, 'Noisy refrigerator', 14);
INSERT INTO room VALUES (214, 190.00, 'Lake View', 2, NULL, 14);
INSERT INTO room VALUES (314, 230.50, 'Forest View', 3, 'Broken lamp', 14);
INSERT INTO room VALUES (414, 270.00, 'Mountain View', 4, 'Clogged toilet', 14);
INSERT INTO room VALUES (514, 310.50, 'Lake View', 5, NULL, 14);

INSERT INTO room VALUES (115, 155.00, 'City View', 1, 'Stained bed sheets', 15);
INSERT INTO room VALUES (215, 205.50, 'Park View', 2, NULL, 15);
INSERT INTO room VALUES (315, 245.00, 'River View', 3, 'Noisy neighbors', 15);
INSERT INTO room VALUES (415, 285.50, 'City View', 4, 'Broken shower head', 15);
INSERT INTO room VALUES (515, 325.00, 'Park View', 5, NULL, 15);

INSERT INTO room VALUES (116, 165.50, 'Mountain View', 1, 'Leaky faucet', 16);
INSERT INTO room VALUES (216, 215.00, 'Lake View', 2, NULL, 16);
INSERT INTO room VALUES (316, 255.50, 'Forest View', 3, 'Broken lamp', 16);
INSERT INTO room VALUES (416, 296.00, 'Mountain View', 4, 'Clogged toilet', 16);
INSERT INTO room VALUES (516, 336.50, 'Lake View', 5, NULL, 16);

INSERT INTO room VALUES (117, 170.50, 'City View', 1, 'Faulty air conditioning', 17);
INSERT INTO room VALUES (217, 220.00, 'Park View', 2, NULL, 17);
INSERT INTO room VALUES (317, 260.50, 'River View', 3, 'Leaky faucet', 17);
INSERT INTO room VALUES (417, 301.00, 'City View', 4, 'Stained carpet', 17);
INSERT INTO room VALUES (517, 341.50, 'Park View', 5, NULL, 17);

INSERT INTO room VALUES (118, 180.00, 'Mountain View', 1, 'Broken lamp', 18);
INSERT INTO room VALUES (218, 230.50, 'Lake View', 2, NULL, 18);
INSERT INTO room VALUES (318, 271.00, 'Forest View', 3, 'Clogged toilet', 18);
INSERT INTO room VALUES (418, 311.50, 'Mountain View', 4, 'Noisy refrigerator', 18);
INSERT INTO room VALUES (518, 352.00, 'Lake View', 5, NULL, 18);

INSERT INTO room VALUES (119, 190.50, 'City View', 1, 'Faulty air conditioning', 19);
INSERT INTO room VALUES (219, 240.00, 'Park View', 2, NULL, 19);
INSERT INTO room VALUES (319, 280.50, 'River View', 3, 'Stained bed sheets', 19);
INSERT INTO room VALUES (419, 321.00, 'City View', 4, 'Clogged toilet', 19);
INSERT INTO room VALUES (519, 361.50, 'Park View', 5, NULL, 19);

INSERT INTO room VALUES (120, 200.00, 'Mountain View', 1, 'Leaky faucet', 20);
INSERT INTO room VALUES (220, 250.50, 'Lake View', 2, NULL, 20);
INSERT INTO room VALUES (320, 291.00, 'Forest View', 3, 'Broken shower head', 20);
INSERT INTO room VALUES (420, 331.50, 'Mountain View', 4, 'Noisy neighbors', 20);
INSERT INTO room VALUES (520, 372.00, 'Lake View', 5, NULL, 20);

INSERT INTO room VALUES (121, 210.50, 'City View', 1, 'Stained carpet', 21);
INSERT INTO room VALUES (221, 260.00, 'Park View', 2, NULL, 21);
INSERT INTO room VALUES (321, 300.50, 'River View', 3, 'Broken lamp', 21);
INSERT INTO room VALUES (421, 341.00, 'City View', 4, 'Clogged toilet', 21);
INSERT INTO room VALUES (521, 381.50, 'Park View', 5, NULL, 21);

INSERT INTO room VALUES (122, 220.00, 'Mountain View', 1, 'Leaky faucet', 22);
INSERT INTO room VALUES (222, 270.50, 'Lake View', 2, NULL, 22);
INSERT INTO room VALUES (322, 311.00, 'Forest View', 3, NULL, 22);
INSERT INTO room VALUES (422, 351.50, 'Mountain View', 4, 'Faulty air conditioning', 22);
INSERT INTO room VALUES (522, 392.00, 'Lake View', 5, NULL, 22);

INSERT INTO room VALUES (123, 230.50, 'City View', 1, 'Stained bed sheets', 23);
INSERT INTO room VALUES (223, 281.00, 'Park View', 2, NULL, 23);
INSERT INTO room VALUES (323, 321.50, 'River View', 3, 'Broken shower head', 23);
INSERT INTO room VALUES (423, 362.00, 'City View', 4, 'Noisy neighbors', 23);
INSERT INTO room VALUES (523, 402.50, 'Park View', 5, NULL, 23);

INSERT INTO room VALUES (124, 240.00, 'Mountain View', 1, 'Leaky faucet', 24);
INSERT INTO room VALUES (224, 290.50, 'Lake View', 2, NULL, 24);
INSERT INTO room VALUES (324, 331.00, 'Forest View', 3, 'Broken lamp', 24);
INSERT INTO room VALUES (424, 371.50, 'Mountain View', 4, 'Clogged toilet', 24);
INSERT INTO room VALUES (524, 412.00, 'Lake View', 5, NULL, 24);

INSERT INTO room VALUES (125, 250.50, 'City View', 1, 'Faulty air conditioning', 25);
INSERT INTO room VALUES (225, 301.00, 'Park View', 2, NULL, 25);
INSERT INTO room VALUES (325, 341.50, 'River View', 3, 'Stained bed sheets', 25);
INSERT INTO room VALUES (425, 382.00, 'City View', 4, 'Clogged toilet', 25);
INSERT INTO room VALUES (525, 422.50, 'Park View', 5, NULL, 25);

INSERT INTO room VALUES (126, 260.00, 'Mountain View', 1, 'Leaky faucet', 26);
INSERT INTO room VALUES (226, 310.50, 'Lake View', 2, NULL, 26);
INSERT INTO room VALUES (326, 351.00, 'Forest View', 3, 'Broken shower head', 26);
INSERT INTO room VALUES (426, 391.50, 'Mountain View', 4, 'Noisy neighbors', 26);
INSERT INTO room VALUES (526, 432.00, 'Lake View', 5, NULL, 26);

INSERT INTO room VALUES (127, 270.50, 'City View', 1, 'Stained carpet', 27);
INSERT INTO room VALUES (227, 321.00, 'Park View', 2, NULL, 27);
INSERT INTO room VALUES (327, 361.50, 'River View', 3, 'Broken lamp', 27);
INSERT INTO room VALUES (427, 402.00, 'City View', 4, 'Clogged toilet', 27);
INSERT INTO room VALUES (527, 442.50, 'Park View', 5, NULL, 27);

INSERT INTO room VALUES (128, 280.00, 'Ocean View', 1, 'Leaky faucet', 28);
INSERT INTO room VALUES (228, 330.50, 'City View', 2, NULL, 28);
INSERT INTO room VALUES (328, 381.00, 'Ocean View', 3, 'Broken shower head', 28);
INSERT INTO room VALUES (428, 431.50, 'City View', 4, 'Noisy neighbors', 28);
INSERT INTO room VALUES (528, 482.00, 'Ocean View', 5, NULL, 28);

INSERT INTO room VALUES (129, 290.50, 'City View', 1, 'Stained bed sheets', 29);
INSERT INTO room VALUES (229, 341.00, 'Park View', 2, NULL, 29);
INSERT INTO room VALUES (329, 391.50, 'City View', 3, 'Faulty air conditioning', 29);
INSERT INTO room VALUES (429, 442.00, 'Park View', 4, 'Clogged toilet', 29);
INSERT INTO room VALUES (529, 492.50, 'City View', 5, NULL, 29);

INSERT INTO room VALUES (130, 300.00, 'Ocean View', 1, 'Broken lamp', 30);
INSERT INTO room VALUES (230, 351.50, 'City View', 2, NULL, 30);
INSERT INTO room VALUES (330, 402.00, 'Ocean View', 3, 'Leaky faucet', 30);
INSERT INTO room VALUES (430, 452.50, 'City View', 4, 'Noisy neighbors', 30);
INSERT INTO room VALUES (530, 503.00, 'Ocean View', 5, NULL, 30);

INSERT INTO room VALUES (131, 310.50, 'Mountain View', 1, 'Faulty air conditioning', 31);
INSERT INTO room VALUES (231, 362.00, 'Lake View', 2, NULL, 31);
INSERT INTO room VALUES (331, 412.50, 'Forest View', 3, 'Clogged toilet', 31);
INSERT INTO room VALUES (431, 463.00, 'Mountain View', 4, 'Broken shower head', 31);
INSERT INTO room VALUES (531, 513.50, 'Lake View', 5, NULL, 31);

INSERT INTO room VALUES (132, 321.00, 'City View', 1, 'Noisy neighbors', 32);
INSERT INTO room VALUES (232, 372.50, 'Park View', 2, NULL, 32);
INSERT INTO room VALUES (332, 423.00, 'City View', 3, 'Stained bed sheets', 32);
INSERT INTO room VALUES (432, 473.50, 'Park View', 4, 'Faulty air conditioning', 32);
INSERT INTO room VALUES (532, 524.00, 'City View', 5, NULL, 32);

INSERT INTO room VALUES (133, 331.50, 'Ocean View', 1, 'Leaky faucet', 33);
INSERT INTO room VALUES (233, 383.00, 'City View', 2, NULL, 33);
INSERT INTO room VALUES (333, 434.50, 'Ocean View', 3, 'Faulty air conditioning', 33);
INSERT INTO room VALUES (433, 486.00, 'City View', 4, 'Clogged toilet', 33);
INSERT INTO room VALUES (533, 537.50, 'Ocean View', 5, NULL, 33);

INSERT INTO room VALUES (134, 341.00, 'Mountain View', 1, 'Broken lamp', 34);
INSERT INTO room VALUES (234, 393.50, 'Lake View', 2, NULL, 34);
INSERT INTO room VALUES (334, 446.00, 'Forest View', 3, 'Noisy neighbors', 34);
INSERT INTO room VALUES (434, 498.50, 'Mountain View', 4, 'Leaky faucet', 34);
INSERT INTO room VALUES (534, 551.00, 'Lake View', 5, NULL, 34);

INSERT INTO room VALUES (135, 350.50, 'City View', 1, 'Clogged toilet', 35);
INSERT INTO room VALUES (235, 403.00, 'Park View', 2, NULL, 35);
INSERT INTO room VALUES (335, 455.50, 'City View', 3, 'Broken shower head', 35);
INSERT INTO room VALUES (435, 508.00, 'Park View', 4, 'Faulty air conditioning', 35);
INSERT INTO room VALUES (535, 560.50, 'City View', 5, NULL, 35);

INSERT INTO room VALUES (136, 360.00, 'Ocean View', 1, 'Stained bed sheets, Clogged toilet', 36);
INSERT INTO room VALUES (236, 413.50, 'City View', 2, NULL, 36);
INSERT INTO room VALUES (336, 466.00, 'Ocean View', 3, 'Leaky faucet', 36);
INSERT INTO room VALUES (436, 518.50, 'City View', 4, 'Noisy neighbors', 36);
INSERT INTO room VALUES (536, 571.00, 'Ocean View', 5, NULL, 36);

INSERT INTO room VALUES (137, 369.50, 'Mountain View', 1, 'Faulty air conditioning', 37);
INSERT INTO room VALUES (237, 423.00, 'Lake View', 2, NULL, 37);
INSERT INTO room VALUES (337, 476.50, 'Forest View', 3, 'Clogged toilet', 37);
INSERT INTO room VALUES (437, 530.00, 'Mountain View', 4, 'Broken shower head', 37);
INSERT INTO room VALUES (537, 583.50, 'Lake View', 5, NULL, 37);

INSERT INTO room VALUES (138, 642.50, 'City View', 1, 'Leaky faucet', 38);
INSERT INTO room VALUES (238, 906.00, 'Park View', 2, NULL, 38);
INSERT INTO room VALUES (338, 1147.50, 'City View', 3, 'Broken lamp', 38);
INSERT INTO room VALUES (438, 1302.00, 'Park View', 4, 'Clogged toilet', 38);
INSERT INTO room VALUES (538, 1461.50, 'City View', 5, NULL, 38);

INSERT INTO room VALUES (139, 651.00, 'Mountain View', 1, 'Faulty air conditioning', 39);
INSERT INTO room VALUES (239, 915.50, 'Lake View', 2, NULL, 39);
INSERT INTO room VALUES (339, 1179.00, 'Forest View', 3, 'Broken shower head', 39);
INSERT INTO room VALUES (439, 1305.50, 'Mountain View', 4, 'Leaky faucet', 39);
INSERT INTO room VALUES (539, 1467.00, 'Lake View', 5, NULL, 39);

INSERT INTO room VALUES (140, 660.50, 'Ocean View', 1, 'Broken shower head', 40);
INSERT INTO room VALUES (240, 816.00, 'City View', 2, NULL, 40);
INSERT INTO room VALUES (340, 1071.50, 'Ocean View', 3, NULL, 40);
INSERT INTO room VALUES (440, 1230.00, 'City View', 4, 'Faulty air conditioning', 40);
INSERT INTO room VALUES (540, 1393.50, 'Ocean View', 5, NULL, 40);
-- Room Insert Queries END




--Appliances Insert Queries START
INSERT INTO appliance (appliance_id, name) VALUES (1, 'TV');
INSERT INTO appliance (appliance_id, name) VALUES (2, 'Bath Tub');
INSERT INTO appliance (appliance_id, name) VALUES (3, 'Hair Dryer');
INSERT INTO appliance (appliance_id, name) VALUES (4, 'Coffee Maker');
INSERT INTO appliance (appliance_id, name) VALUES (5, 'Iron');
--Appliances Insert Queries END




--RoomAppliances Insert Queries START
INSERT INTO room_appliance VALUES (101, 1);
INSERT INTO room_appliance VALUES (101, 2);
INSERT INTO room_appliance VALUES (101, 3);
INSERT INTO room_appliance VALUES (101, 4);
INSERT INTO room_appliance VALUES (101, 5);
INSERT INTO room_appliance VALUES (201, 1);
INSERT INTO room_appliance VALUES (201, 4);
INSERT INTO room_appliance VALUES (301, 3);
INSERT INTO room_appliance VALUES (301, 4);
INSERT INTO room_appliance VALUES (301, 1);
INSERT INTO room_appliance VALUES (401, 5);
INSERT INTO room_appliance VALUES (401, 2);
INSERT INTO room_appliance VALUES (401, 3);
INSERT INTO room_appliance VALUES (501, 4);
INSERT INTO room_appliance VALUES (501, 5);

INSERT INTO room_appliance VALUES (102, 5);
INSERT INTO room_appliance VALUES (102, 3);
INSERT INTO room_appliance VALUES (202, 5);
INSERT INTO room_appliance VALUES (202, 4);
INSERT INTO room_appliance VALUES (302, 3);
INSERT INTO room_appliance VALUES (302, 2);
INSERT INTO room_appliance VALUES (302, 1);
INSERT INTO room_appliance VALUES (402, 5);
INSERT INTO room_appliance VALUES (402, 1);
INSERT INTO room_appliance VALUES (402, 2);
INSERT INTO room_appliance VALUES (502, 3);
INSERT INTO room_appliance VALUES (502, 1);

INSERT INTO room_appliance VALUES (103, 1);
INSERT INTO room_appliance VALUES (103, 3);
INSERT INTO room_appliance VALUES (203, 3);
INSERT INTO room_appliance VALUES (203, 5);
INSERT INTO room_appliance VALUES (303, 3);
INSERT INTO room_appliance VALUES (303, 4);
INSERT INTO room_appliance VALUES (303, 5);
INSERT INTO room_appliance VALUES (403, 4);
INSERT INTO room_appliance VALUES (403, 2);
INSERT INTO room_appliance VALUES (403, 3);
INSERT INTO room_appliance VALUES (503, 1);
INSERT INTO room_appliance VALUES (503, 2);

INSERT INTO room_appliance VALUES (104, 1);
INSERT INTO room_appliance VALUES (104, 4);
INSERT INTO room_appliance VALUES (204, 5);
INSERT INTO room_appliance VALUES (204, 2);
INSERT INTO room_appliance VALUES (304, 2);
INSERT INTO room_appliance VALUES (304, 1);
INSERT INTO room_appliance VALUES (304, 3);
INSERT INTO room_appliance VALUES (404, 4);
INSERT INTO room_appliance VALUES (404, 1);
INSERT INTO room_appliance VALUES (404, 5);
INSERT INTO room_appliance VALUES (504, 3);
INSERT INTO room_appliance VALUES (504, 2);

INSERT INTO room_appliance VALUES (105, 4);
INSERT INTO room_appliance VALUES (105, 5);
INSERT INTO room_appliance VALUES (205, 3);
INSERT INTO room_appliance VALUES (205, 1);
INSERT INTO room_appliance VALUES (305, 2);
INSERT INTO room_appliance VALUES (305, 5);
INSERT INTO room_appliance VALUES (305, 3);
INSERT INTO room_appliance VALUES (405, 1);
INSERT INTO room_appliance VALUES (405, 4);
INSERT INTO room_appliance VALUES (405, 2);
INSERT INTO room_appliance VALUES (505, 5);
INSERT INTO room_appliance VALUES (505, 1);

INSERT INTO room_appliance VALUES (106, 2);
INSERT INTO room_appliance VALUES (106, 4);
INSERT INTO room_appliance VALUES (206, 3);
INSERT INTO room_appliance VALUES (206, 1);
INSERT INTO room_appliance VALUES (306, 2);
INSERT INTO room_appliance VALUES (306, 5);
INSERT INTO room_appliance VALUES (306, 3);
INSERT INTO room_appliance VALUES (406, 1);
INSERT INTO room_appliance VALUES (406, 4);
INSERT INTO room_appliance VALUES (406, 2);
INSERT INTO room_appliance VALUES (506, 5);
INSERT INTO room_appliance VALUES (506, 1);

INSERT INTO room_appliance VALUES (107, 4);
INSERT INTO room_appliance VALUES (107, 2);
INSERT INTO room_appliance VALUES (207, 1);
INSERT INTO room_appliance VALUES (207, 3);
INSERT INTO room_appliance VALUES (307, 5);
INSERT INTO room_appliance VALUES (307, 2);
INSERT INTO room_appliance VALUES (307, 1);
INSERT INTO room_appliance VALUES (407, 4);
INSERT INTO room_appliance VALUES (407, 3);
INSERT INTO room_appliance VALUES (407, 5);
INSERT INTO room_appliance VALUES (507, 2);
INSERT INTO room_appliance VALUES (507, 1);

INSERT INTO room_appliance VALUES (108, 3);
INSERT INTO room_appliance VALUES (108, 1);
INSERT INTO room_appliance VALUES (208, 2);
INSERT INTO room_appliance VALUES (208, 5);
INSERT INTO room_appliance VALUES (308, 1);
INSERT INTO room_appliance VALUES (308, 4);
INSERT INTO room_appliance VALUES (308, 5);
INSERT INTO room_appliance VALUES (408, 3);
INSERT INTO room_appliance VALUES (408, 2);
INSERT INTO room_appliance VALUES (408, 4);
INSERT INTO room_appliance VALUES (508, 1);
INSERT INTO room_appliance VALUES (508, 5);

INSERT INTO room_appliance VALUES (109, 2);
INSERT INTO room_appliance VALUES (109, 3);
INSERT INTO room_appliance VALUES (209, 1);
INSERT INTO room_appliance VALUES (209, 4);
INSERT INTO room_appliance VALUES (309, 2);
INSERT INTO room_appliance VALUES (309, 5);
INSERT INTO room_appliance VALUES (409, 4);
INSERT INTO room_appliance VALUES (409, 1);
INSERT INTO room_appliance VALUES (409, 3);
INSERT INTO room_appliance VALUES (509, 5);
INSERT INTO room_appliance VALUES (509, 2);

INSERT INTO room_appliance VALUES (110, 4);
INSERT INTO room_appliance VALUES (110, 5);
INSERT INTO room_appliance VALUES (210, 1);
INSERT INTO room_appliance VALUES (210, 3);
INSERT INTO room_appliance VALUES (310, 2);
INSERT INTO room_appliance VALUES (310, 5);
INSERT INTO room_appliance VALUES (410, 3);
INSERT INTO room_appliance VALUES (410, 4);
INSERT INTO room_appliance VALUES (510, 1);
INSERT INTO room_appliance VALUES (510, 2);

INSERT INTO room_appliance VALUES (111, 3);
INSERT INTO room_appliance VALUES (111, 5);
INSERT INTO room_appliance VALUES (211, 2);
INSERT INTO room_appliance VALUES (211, 4);
INSERT INTO room_appliance VALUES (311, 1);
INSERT INTO room_appliance VALUES (311, 5);
INSERT INTO room_appliance VALUES (411, 2);
INSERT INTO room_appliance VALUES (411, 3);
INSERT INTO room_appliance VALUES (511, 4);
INSERT INTO room_appliance VALUES (511, 5);

INSERT INTO room_appliance VALUES (112, 4);
INSERT INTO room_appliance VALUES (112, 2);
INSERT INTO room_appliance VALUES (212, 3);
INSERT INTO room_appliance VALUES (212, 5);
INSERT INTO room_appliance VALUES (312, 1);
INSERT INTO room_appliance VALUES (312, 4);
INSERT INTO room_appliance VALUES (412, 2);
INSERT INTO room_appliance VALUES (412, 5);
INSERT INTO room_appliance VALUES (512, 1);
INSERT INTO room_appliance VALUES (512, 3);

INSERT INTO room_appliance VALUES (113, 3);
INSERT INTO room_appliance VALUES (113, 2);
INSERT INTO room_appliance VALUES (213, 1);
INSERT INTO room_appliance VALUES (213, 3);
INSERT INTO room_appliance VALUES (313, 4);
INSERT INTO room_appliance VALUES (313, 1);
INSERT INTO room_appliance VALUES (413, 1);
INSERT INTO room_appliance VALUES (413, 4);
INSERT INTO room_appliance VALUES (413, 5);
INSERT INTO room_appliance VALUES (513, 2);
INSERT INTO room_appliance VALUES (513, 1);
INSERT INTO room_appliance VALUES (513, 3);

INSERT INTO room_appliance VALUES (131, 1);
INSERT INTO room_appliance VALUES (131, 3);
INSERT INTO room_appliance VALUES (231, 2);
INSERT INTO room_appliance VALUES (231, 4);
INSERT INTO room_appliance VALUES (331, 3);
INSERT INTO room_appliance VALUES (331, 4);
INSERT INTO room_appliance VALUES (331, 5);
INSERT INTO room_appliance VALUES (431, 1);
INSERT INTO room_appliance VALUES (431, 2);
INSERT INTO room_appliance VALUES (431, 3);
INSERT INTO room_appliance VALUES (531, 4);
INSERT INTO room_appliance VALUES (531, 5);
--RoomAppliances Insert Queries END




-- Client Insert Queries START
INSERT INTO client VALUES (10000001, 'Smith', 'John', 30, 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V2R9', '555-555-5555', 'john.smith@email.com', '2022-03-15', 'j5Dp#h');
INSERT INTO client VALUES (10000002, 'Johnson', 'Jane', 25, 456, 'Broadway', 'New York', 'New York', 'United States', '10001', '555-555-5555', 'jane.johnson@email.com', '2022-04-01', '3qZdKj8');
INSERT INTO client VALUES (10000003, 'Dubois', 'Pierre', 35, 789, 'Rue de la Paix', 'Paris', '', 'France', '75001', '555-555-5555', 'pierre.dubois@email.com', '2022-02-20', 'S!f6t');
INSERT INTO client VALUES (10000004, 'Tanaka', 'Yuki', 28, 321, 'Minami 1-jo Nishi 2-chome', 'Sapporo', 'Hokkaido', 'Japan', '060801', '555-555-5555', 'yuki.tanaka@email.com', '2022-03-10', '9LmR7*');
INSERT INTO client VALUES (10000005, 'Garcia', 'Juan', 42, 987, 'Avenida Juarez', 'Mexico City', 'Mexico City', 'Mexico', '06010', '555-555-5555', 'juan.garcia@email.com', '2022-01-01', '2sG9@');

INSERT INTO client VALUES (10000006, 'Smith', 'Mendez', 25, 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V2G9', '416-555-1234', 'john.smith@example.com', '2021-01-01', 'x#7NpYf');
INSERT INTO client VALUES (10000007, 'Gonzalez', 'Maria', 30, 456, 'Elm St', 'Madrid', 'Madrid', 'Spain', '28001', '+34 91 123 4567', 'maria.gonzalez@example.com', '2022-03-15', 'Tc4jK5#');
INSERT INTO client VALUES (10000008, 'Kim', 'Ji-hye', 22, 789, 'Mapo-gu', 'Seoul', 'Seoul', 'South Korea', '04197', '+82 2-123-4567', 'jihye.kim@example.com', '2023-01-02', 'p8@hUzA6');
INSERT INTO client VALUES (10000009, 'Jones', 'David', 40, 1011, 'Park Ave', 'New York', 'New York', 'USA', '10028', '+1 212-555-1212', 'david.jones@example.com', '2022-06-30', 'W2sE4t8y#');
INSERT INTO client VALUES (100000010, 'Nguyen', 'Linh', 27, 1213, 'Le Duan St', 'Ho Chi Minh City', 'Ho Chi Minh City', 'Vietnam', '70000', '+84 28 1234 5678', 'linh.nguyen@example.com', '2023-02-10', 'k9HsT6x#z');

INSERT INTO client VALUES (100000011, 'Smith', 'John', 28, 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V5T3', '555-555-5555', 'john.smith@email.com', '2020-01-01', 'password13');
INSERT INTO client VALUES (100000012, 'Johnson', 'Emily', 35, 456, 'Oak Ave', 'New York', 'New York', 'United States', '10001', '555-555-5555', 'emily.johnson@email.com', '2020-02-01', 'password456');
INSERT INTO client VALUES (100000013, 'Garcia', 'Luis', 22, 789, 'Calle Principal', 'Mexico City', 'Mexico City', 'Mexico', '05000', '555-555-5555', 'luis.garcia@email.com', '2020-03-01', 'password789');
INSERT INTO client VALUES (100000014, 'Dubois', 'Marie', 41, 12, 'Rue de la Paix', 'Paris', 'Île-de-France', 'France', '75001', '555-555-5555', 'marie.dubois@email.com', '2020-04-01', 'password123');
INSERT INTO client VALUES (100000015, 'Williams', 'Oliver', 26, 34, 'Queen St', 'Melbourne', 'Victoria', 'Australia', '3000', '555-555-5555', 'oliver.williams@email.com', '2020-05-01', 'password4576');

INSERT INTO client VALUES (100000016, 'Jane', 'Smith', 25, 456, 'King St', 'Toronto', 'Ontario', 'Canada', 'M5V2K8', '647-234-5678', 'jane.smith@email.com', '2022-01-02', 'password123');
INSERT INTO client VALUES (100000017, 'Bob', 'Johnson', 40, 789, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M5V2T9', '905-345-6789', 'bob.johnson@email.com', '2022-01-03', 'password123');
INSERT INTO client VALUES (100000018, 'Samantha', 'Lee', 27, 321, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M5V2P4', '416-456-7890', 'samantha.lee@email.com', '2022-01-04', 'password123');
INSERT INTO client VALUES (100000019, 'Mike', 'Chang', 35, 654, 'Bay St', 'Toronto', 'Ontario', 'Canada', 'M5V2Z8', '647-567-8901', 'mike.chang@email.com', '2022-01-05', 'password123');
INSERT INTO client VALUES (100000020, 'Emily', 'Davis', 29, 987, 'Front St', 'Toronto', 'Ontario', 'Canada', 'M5V2N3', '905-678-9012', 'emily.davis@email.com', '2022-01-06', 'password123');

INSERT INTO client VALUES (100000021, 'Adam', 'Johnson', 42, 246, 'Spadina Ave', 'Toronto', 'Ontario', 'Canada', 'M5V2T6', '416-789-0123', 'adam.johnson@email.com', '2022-01-07', 'password123');
INSERT INTO client VALUES (100000022, 'Megan', 'Smith', 31, 369, 'Bloor St', 'Toronto', 'Ontario', 'Canada', 'M5V2J5', '647-901-2345', 'megan.smith@email.com', '2022-01-08', 'password123');
INSERT INTO client VALUES (100000023, 'Eric', 'Lee', 23, 582, 'Dundas St', 'Toronto', 'Ontario', 'Canada', 'M5V2Y6', '905-123-4567', 'eric.lee@email.com', '2022-01-09', 'password123');
INSERT INTO client VALUES (100000024, 'Olivia', 'Wang', 37, 795, 'College St', 'Toronto', 'Ontario', 'Canada', 'M5V2P2', '416-234-5678', 'olivia.wang@email.com', '2022-01-10', 'password123');
INSERT INTO client VALUES (100000025, 'John', 'Doe', 25, 1234, 'Main St', 'Toronto', 'ON', 'Canada', 'M1M1M1', '555-555-5555', 'johndoe@email.com', '2022-01-01', 'password123');

INSERT INTO client VALUES (100000026, 'Jane', 'Smith', 30, 5678, 'Elm St', 'Vancouver', 'BC', 'Canada', 'V1V1V1', '666-666-6666', 'janesmith@email.com', '2022-02-01', 'password456');
INSERT INTO client VALUES (100000027, 'Mike', 'Johnson', 42, 9101, 'Oak St', 'Calgary', 'AB', 'Canada', 'T2T2T2', '777-777-7777', 'mikejohnson@email.com', '2022-03-01', 'password789');
INSERT INTO client VALUES (100000028, 'Emily', 'Brown', 21, 1112, 'Maple St', 'Montreal', 'QC', 'Canada', 'H2H2H2', '888-888-8888', 'emilybrown@email.com', '2022-04-01', 'passwordabc');
INSERT INTO client VALUES (100000029, 'David', 'Lee', 27, 1314, 'Cherry St', 'Ottawa', 'ON', 'Canada', 'K1K1K1', '999-999-9999', 'davidlee@email.com', '2022-05-01', 'passworddef');
INSERT INTO client VALUES (100000030, 'Sarah', 'Taylor', 35, 1516, 'Pine St', 'Edmonton', 'AB', 'Canada', 'T5T5T5', '111-111-1111', 'sarahtaylor@email.com', '2022-06-01', 'passwordghi');

INSERT INTO client VALUES (100000031, 'Daniel', 'Wong', 19, 1718, 'Birch St', 'Winnipeg', 'MB', 'Canada', 'R3R3R3', '222-222-2222', 'danielwong@email.com', '2022-07-01', 'passwordjkl');
INSERT INTO client VALUES (100000032, 'Karen', 'Nguyen', 23, 1920, 'Cedar St', 'Halifax', 'NS', 'Canada', 'B3B3B3', '333-333-3333', 'karennguyen@email.com', '2022-08-01', 'passwordmno');
INSERT INTO client VALUES (100000033, 'Ryan', 'Chan', 28, 2122, 'Spruce St', 'Regina', 'SK', 'Canada', 'S4S4S4', '444-444-4444', 'ryanchan@email.com', '2022-09-01', 'passwordpqr');
INSERT INTO client VALUES (100000034, 'Amy', 'Garcia', 31, 2324, 'Willow St', 'Victoria', 'BC', 'Canada', 'V8V8V8', '555-555-5555', 'amygarcia@email.com', '2022-10-01', 'passwordstu');
INSERT INTO client VALUES (100000035, 'John', 'Doe', 25, 123, 'Main St', 'Toronto', 'ON', 'Canada', 'M1M 1M1', '555-555-5555', 'john.doe@example.com', '2021-01-01', 'password123');

INSERT INTO client VALUES (100000036, 'Jane', 'Smith', 30, 456, 'Highway Ave', 'Vancouver', 'BC', 'Canada', 'V5V 5V5', '555-555-5556', 'jane.smith@example.com', '2020-12-31', 'password456');
INSERT INTO client VALUES (100000037, 'Mike', 'Johnson', 45, 789, 'Broadway Blvd', 'Montreal', 'QC', 'Canada', 'H3H 3H3', '555-555-5557', 'mike.johnson@example.com', '2022-02-01', 'password789');
INSERT INTO client VALUES (100000038, 'Emily', 'Garcia', 27, 101, 'Queen St', 'Ottawa', 'ON', 'Canada', 'K1K 1K1', '555-555-5558', 'emily.garcia@example.com', '2022-01-15', 'password101');
INSERT INTO client VALUES (100000039, 'Mark', 'Lee', 35, 222, 'Park Ave', 'Calgary', 'AB', 'Canada', 'T2T 2T2', '555-555-5559', 'mark.lee@example.com', '2021-11-11', 'password222');
INSERT INTO client VALUES (100000040, 'Avery', 'Brown', 19, 333, 'Highland Dr', 'Edmonton', 'AB', 'Canada', 'T5T 5T5', '555-555-5560', 'avery.brown@example.com', '2023-03-01', 'password333');

INSERT INTO client VALUES (100000041, 'Natalie', 'Davis', 28, 444, 'Bay St', 'Victoria', 'BC', 'Canada', 'V8V 8V8', '555-555-5561', 'natalie.davis@example.com', '2022-05-05', 'password444');
INSERT INTO client VALUES (100000042, 'David', 'Gomez', 31, 555, 'Elm Rd', 'Winnipeg', 'MB', 'Canada', 'R3R 3R3', '555-555-5562', 'david.gomez@example.com', '2022-03-15', 'password555');
INSERT INTO client VALUES (100000043, 'Maria', 'Ramirez', 50, 666, 'Oak St', 'Halifax', 'NS', 'Canada', 'B3B 3B3', '555-555-5563', 'maria.ramirez@example.com', '2022-06-30', 'password666');
-- Client Insert Queries END



-- Employee Insert Queries START
-- hotel_id = 1
INSERT INTO employee VALUES (1000000, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M1M1', 50000, '416-555-1234', 'john.smith@hotels.com', '54jg#pZd', 'gestionnaire', 0, 1);
INSERT INTO employee VALUES (1000001, 'Lee', 'David', 456, 'Oak St', 'Toronto', 'Ontario', 'Canada', 'M2M2M2', 45000, '416-555-5678', 'david.lee@hotel.com', 'G8ffg$qW7', 'réceptionniste', 0, 1);
INSERT INTO employee VALUES (1000002, 'Chen', 'Amy', 789, 'Maple St', 'Toronto', 'Ontario', 'Canada', 'M3M3M3', 40000, '416-555-9012', 'amy.chen@hotel.com', 'hNfd43k!', 'administrateur', 0, 1);
INSERT INTO employee VALUES (1000003, 'Wong', 'Kevin', 234, 'Pine St', 'Toronto', 'Ontario', 'Canada', 'M4M4M4', 55000, '416-555-3456', 'kevin.wong@hotel.com', 'R9cvb44@b', 'cuisiner', 0, 1);
INSERT INTO employee VALUES (1000004, 'Garcia', 'Maria', 567, 'Cedar St', 'Toronto', 'Ontario', 'Canada', 'M5M5M5', 35000, '416-555-7890', 'maria.garcia@hotel.com', 'fL6bhhf74j#K', 'nettoyeur', 0, 1);
INSERT INTO employee VALUES (1000005, 'Doe', 'John', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V 2L1', 50000, '416-555-1234', 'johndoe@hotel.com', 'P2c4ccvb7Bv!x', 'réceptionniste', 0, 1);
INSERT INTO employee VALUES (1000006, 'Smith', 'Jane', 5678, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M5V 1H3', 60000, '416-555-5678', 'janesmith@hotel.com', 'J4tY47cdcc9#m', 'administrateur', 0, 1);
INSERT INTO employee VALUES (1000007, 'Garcia', 'Carlos', 9012, 'King St', 'Toronto', 'Ontario', 'Canada', 'M5V 3P4', 45000, '416-555-9012', 'carlosgarcia@hotel.com', 'D6acvg37U@zF', 'cuisiner', 5, 1);
INSERT INTO employee VALUES (1000008, 'Lee', 'Jin', 3456, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M5V 4J6', 55000, '416-555-3456', 'jinlee@hotel.com', 'V7gcvgg47Xe!', 'nettoyeur', 0, 1);
INSERT INTO employee VALUES (1000009, 'Chen', 'Wei', 7890, 'Bay St', 'Toronto', 'Ontario', 'Canada', 'M5V 2W8', 50000, '416-555-7890', 'weichen@hotel.com', 'Q18sTcccf#pL9', 'réceptionniste', 2, 1);

--hotel_id = 2
INSERT INTO employee VALUES (1000010, 'Doe', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1N2P3', 50000.0, '555-1234', 'johndoe@hotel.com', 'p@ssvgword1', 'réceptionniste', 0.0, 2);
INSERT INTO employee VALUES (1000011, 'Smith', 'Jane', 456, 'First Ave', 'Vancouver', 'British Columbia', 'Canada', 'V5K3L4', 60000.0, '555-5678', 'janesmith@hotels.com', 'p@sswbbbbord2', 'gestionnaire', 0.0, 2);
INSERT INTO employee VALUES (1000012, 'Garcia', 'Maria', 789, 'Oak St', 'Calgary', 'Alberta', 'Canada', 'T2P2G8', 55000.0, '555-9012', 'mariagarcia@hotel.com', 'p@sswobbrd3', 'nettoyeur', 0.0, 2);
INSERT INTO employee VALUES (1000013, 'Kim', 'David', 111, 'Elm St', 'Montreal', 'Quebec', 'Canada', 'H1A1R6', 65000.0, '555-3456', 'davidkim@hotel.com', 'p@sswbford4', 'administrateur', 0.0, 2);
INSERT INTO employee VALUES (1000014, 'Chen', 'Michelle', 222, 'Park Ave', 'Halifax', 'Nova Scotia', 'Canada', 'B3H2Y5', 70000.0, '555-7890', 'michellechen@hotel.com', 'p@ssworfffd5', 'cuisiner', 0.0, 2);
INSERT INTO employee VALUES (1000015, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'A1B2C3', 50000.0, '416-555-1234', 'john.smith@hotel.com', 'passwfgbord1', 'réceptionniste', 0.0, 2);
INSERT INTO employee VALUES (1000016, 'Johnson', 'Mary', 456, 'Oak St', 'Montreal', 'Quebec', 'Canada', 'D4E5F6', 60000.0, '514-555-5678', 'mary.johnson@hotel.com', 'pasvbhsword2', 'administrateur', 0.0, 2);
INSERT INTO employee VALUES (1000017, 'Lee', 'David', 789, 'Maple St', 'Vancouver', 'British Columbia', 'Canada', 'G7H8I9', 70000.0, '604-555-9012', 'david.lee@hotel.com', 'passvgfword3', 'cuisiner', 0.0, 2);
INSERT INTO employee VALUES (1000018, 'Kim', 'Sarah', 246, 'Elm St', 'Calgary', 'Alberta', 'Canada', 'J1K2L3', 80000.0, '403-555-3456', 'sarah.kim@hotel.com', 'passvbhword4', 'nettoyeur', 0.0, 2);
INSERT INTO employee VALUES (1000019, 'Garcia', 'Juan', 369, 'Pine St', 'Halifax', 'Nova Scotia', 'Canada', 'M4N5O6', 90000.0, '902-555-7890', 'juan.garcia@hotel.com', 'pasvvfsword5', 'administrateur', 0.0, 2);

-- hotel_id = 3
INSERT INTO employee VALUES (1000020, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V 2H1', 50000.0, '416-123-4567', 'john.smith@hotel.com', 'p@sSvvgtw0rD12', 'réceptionniste', 0.0, 3);
INSERT INTO employee VALUES (1000021, 'Johnson', 'Emily', 456, 'Broadway', 'Vancouver', 'British Columbia', 'Canada', 'V6G 2V5', 55000.0, '604-234-5678', 'emily.johnson@hotels.com', 't#EvvhhhG7fDx9', 'gestionnaire', 0.0, 3);
INSERT INTO employee VALUES (1000022, 'Garcia', 'Antonio', 789, 'Oak St', 'Montreal', 'Quebec', 'Canada', 'H3A 2R6', 60000.0, '514-345-6789', 'antonio.garcia@hotel.com', 'J8k#nH5rrtxL2', 'cuisiner', 0.0, 3);
INSERT INTO employee VALUES (1000023, 'Smith', 'Emily', 101, 'Elm St', 'Toronto', 'Ontario', 'Canada', 'M4S 1R8', 55000.0, '416-456-7890', 'emily.smith@hotel.com', 'd#SfT6ghjhR7k', 'nettoyeur', 0.0, 3);
INSERT INTO employee VALUES (1000024, 'Garcia', 'Maria', 321, 'Park Ave', 'Calgary', 'Alberta', 'Canada', 'T2P 3R5', 65000.0, '403-567-8901', 'maria.garcia@hotel.com', '5j#LbbtfN8qP6', 'réceptionniste', 0.0, 3);
INSERT INTO employee VALUES (1000025, 'Johnson', 'Michael', 456, 'Main St', 'Vancouver', 'British Columbia', 'Canada', 'V6G 2V5', 70000.0, '604-678-9012', 'michael.johnson@hotel.com', 'uhju9#tEiK7zL', 'administrateur', 0.0, 3);
INSERT INTO employee VALUES (1000026, 'Lee', 'Min', 789, 'Broadway', 'Montreal', 'Quebec', 'Canada', 'H3A 2R6', 75000.0, '514-789-0123', 'min.lee@hotel.com', 'p4#AqS7kGfff9', 'cuisiner', 0.0, 3);
INSERT INTO employee VALUES (1000027, 'Brown', 'Olivia', 101, 'Oak St', 'Toronto', 'Ontario', 'Canada', 'M4S 1R8', 80000.0, '416-890-1234', 'olivia.brown@hotel.com', 'w7#vvgLkR5uT2', 'nettoyeur', 0.0, 3);
INSERT INTO employee VALUES (1000028, 'Lee', 'William', 321, 'Park Ave', 'Calgary', 'Alberta', 'Canada', 'T2P 3R5', 85000.0, '403-901-2345', 'william.lee@hotel.com', 'x3#cdrfRt6jP9', 'réceptionniste', 0.0, 3);
INSERT INTO employee VALUES (1000029, 'Brown', 'Jacob', 123, 'Elm St', 'Vancouver', 'British Columbia', 'Canada', 'V6G 2V5', 90000.0, '604-234-5678', 'jacob.brown@hotel.com', 'z9hfb#sTb4gH6', 'administrateur', 0.0, 3);

-- hotel_id = 4
INSERT INTO employee VALUES (1000030, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M4C 1A4', 45000.00, '416-555-1234', 'john.smith@hotel.com', 'pasvyhsword01', 'réceptionniste', 0.0, 4);
INSERT INTO employee VALUES (1000031, 'Garcia', 'Maria', 456, 'Broadway Ave', 'Vancouver', 'British Columbia', 'Canada', 'V5K 2J6', 50000.00, '604-555-5678', 'maria.garcia@hotel.com', 'pvhyassword02', 'administrateur', 0.0, 4);
INSERT INTO employee VALUES (1000032, 'Nguyen', 'Thi', 789, '4th St', 'Montreal', 'Quebec', 'Canada', 'H3G 1M8', 60000.00, '514-555-9012', 'thi.nguyen@hotel.com', 'passvhyword03', 'cuisiner', 0.0, 4);
INSERT INTO employee VALUES (1000033, 'Lee', 'Jae', 1011, '5th Ave', 'Toronto', 'Ontario', 'Canada', 'M4S 1Z1', 55000.00, '416-555-3456', 'jae.lee@hotels.com', 'passhvyword04', 'gestionnaire', 0.0, 4);
INSERT INTO employee VALUES (1000034, 'Wang', 'Ling', 1213, '6th St', 'Vancouver', 'British Columbia', 'Canada', 'V6S 0A3', 48000.00, '604-555-7890', 'ling.wang@hotel.com', 'passvtword05', 'réceptionniste', 0.0, 4);
INSERT INTO employee VALUES (1000035, 'Gomez', 'Antonio', 1415, '7th Ave', 'Montreal', 'Quebec', 'Canada', 'H3B 1Y8', 52000.00, '514-555-2345', 'antonio.gomez@hotel.com', 'passwvhytord06', 'administrateur', 0.0, 4);
INSERT INTO employee VALUES (1000036, 'Kim', 'Min', 1617, '8th St', 'Toronto', 'Ontario', 'Canada', 'M4P 1L7', 65000.00, '416-555-6789', 'min.kim@hotel.com', 'passwhord07', 'cuisiner', 0.0, 4);
INSERT INTO employee VALUES (1000037, 'Chen', 'Xin', 1819, '9th Ave', 'Vancouver', 'British Columbia', 'Canada', 'V5T 1K1', 50000.00, '604-555-1234', 'xin.chen@hotel.com', 'pasvthysword08', 'nettoyeur', 0.0, 4);
INSERT INTO employee VALUES (1000038, 'Singh', 'Raj', 2021, '10th St', 'Montreal', 'Quebec', 'Canada', 'H3E 1L6', 55000.00, '514-555-5678', 'raj.singh@hotel.com', 'passwvhytord09', 'réceptionniste', 0.0, 4);
INSERT INTO employee VALUES (1000039, 'Choi', 'Hyun', 2223, '11th Ave', 'Toronto', 'Ontario', 'Canada', 'M4R 1N4', 60000.00, '416-555-9012', 'hyun.choi@hotel.com', 'passvtword10', 'administrateur', 0.0, 4);

-- hotel_id = 5
INSERT INTO employee VALUES (1000040, 'Johnson', 'Sarah', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5G 1N8', 50000.00, '416-555-1234', 'sarah.johnson@hotel.com', 'P@sswvthord123', 'réceptionniste', 2.5, 5);
INSERT INTO employee VALUES (1000041, 'Garcia', 'Juan', 5678, 'Broadway', 'Montreal', 'Quebec', 'Canada', 'H2X 1Y6', 60000.00, '514-555-5678', 'juan.garcia@hotels.com', 'P@sshyword123', 'gestionnaire', 3.5, 5);
INSERT INTO employee VALUES (1000042, 'Kim', 'Jung', 9101, 'King St', 'Vancouver', 'British Columbia', 'Canada', 'V6B 2W3', 55000.00, '604-555-9101', 'jung.kim@hotel.com', 'P@svtyhsword123', 'cuisiner', 1.5, 5);
INSERT INTO employee VALUES (1000043, 'Smith', 'Emma', 1212, 'Broadway', 'Toronto', 'Ontario', 'Canada', 'M4P 1E8', 65000.00, '416-555-1212', 'emma.smith@hotel.com', 'P@sswovhyvrd123', 'nettoyeur', 2.0, 5);
INSERT INTO employee VALUES (1000044, 'Lee', 'Min', 1313, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M5C 2M6', 45000.00, '416-555-1313', 'min.lee@hotel.com', 'P@ssvyhword123', 'réceptionniste', 3.0, 5);
INSERT INTO employee VALUES (1000045, 'Nguyen', 'Linh', 1414, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M4T 1W5', 55000.00, '416-555-1414', 'linh.nguyen@hotel.com', 'P@sshvytword123', 'administrateur', 1.0, 5);
INSERT INTO employee VALUES (1000046, 'Chen', 'Hao', 1515, 'Robson St', 'Vancouver', 'British Columbia', 'Canada', 'V6Z 1X5', 48000.00, '604-555-1515', 'hao.chen@hotel.com', 'P@hvtyssword123', 'cuisiner', 2.0, 5);
INSERT INTO employee VALUES (1000047, 'Brown', 'Olivia', 1616, 'King St', 'Toronto', 'Ontario', 'Canada', 'M5H 1A1', 70000.00, '416-555-1616', 'olivia.brown@hotel.com', 'P@ssvhtord123', 'nettoyeur', 2.5, 5);
INSERT INTO employee VALUES (1000048, 'Wang', 'Tao', 1717, 'Robson St', 'Vancouver', 'British Columbia', 'Canada', 'V6Z1X5', 52000.00, '604-555-1717', 'tao.wang@hotel.com', 'P@ssvtyhword123', 'réceptionniste', 1.5, 5);
INSERT INTO employee VALUES (1000049, 'Gomez', 'Luis', 1818, 'Sainte-Catherine St', 'Montreal', 'Quebec', 'Canada', 'H3B 1B5', 58000.00, '514-555-1818', 'luis.gomez@hotel.com', 'P@ssvyhtord123', 'administrateur', 2.5, 5);

-- hotel_id = 6
INSERT INTO employee VALUES (1000050, 'Smith', 'John', 123, 'Main St', 'Toronto', 'ON', 'Canada', 'M1M1M1', 50000, '555-555-5555', 'jsmith@hotel.com', 'passwv5ord1', 'réceptionniste', 1.5, 6);
INSERT INTO employee VALUES (1000051, 'Garcia', 'Maria', 456, 'Park Ave', 'Montreal', 'QC', 'Canada', 'H2H2H2', 55000, '555-555-5555', 'mgarcia@hotel.com', 'pashvysword2', 'administrateur', 2.0, 6);
INSERT INTO employee VALUES (1000052, 'Nguyen', 'Linh', 789, 'Broadway', 'Vancouver', 'BC', 'Canada', 'V1V1V1', 45000, '555-555-5555', 'lnguyen@hotel.com', 'pasvchsword3', 'cuisiner', 0.0, 6);
INSERT INTO employee VALUES (1000053, 'Lee', 'Ji-hyun', 101, 'King St', 'Toronto', 'ON', 'Canada', 'M5M5M5', 48000, '555-555-5555', 'jlee@hotels.com', 'passwvhythord4', 'gestionnaire', 2.5, 6);
INSERT INTO employee VALUES (1000054, 'Chen', 'Wei', 234, 'Main St', 'Vancouver', 'BC', 'Canada', 'V2V2V2', 52000, '555-555-5555', 'wchen@hotel.com', 'pasvhytsword5', 'réceptionniste', 1.0, 6);
INSERT INTO employee VALUES (1000055, 'Rodriguez', 'Juan', 567, 'Elm St', 'Montreal', 'QC', 'Canada', 'H3H3H3', 47000, '555-555-5555', 'jrodriguez@hotel.com', 'passvvrhword6', 'administrateur', 0.5, 6);
INSERT INTO employee VALUES (1000056, 'Kim', 'Seung-hyun', 890, 'Yonge St', 'Toronto', 'ON', 'Canada', 'M2M2M2', 53000, '555-555-5555', 'skim@hotel.com', 'pasww4xxsword7', 'cuisiner', 1.5, 6);
INSERT INTO employee VALUES (1000057, 'Singh', 'Raj', 123, 'Queen St', 'Vancouver', 'BC', 'Canada', 'V3V3V3', 50000, '555-555-5555', 'rsingh@hotel.com', 'passwxxeford8', 'nettoyeur', 1.0, 6);
INSERT INTO employee VALUES (1000058, 'Gonzalez', 'Ana', 456, 'Robson St', 'Vancouver', 'BC', 'Canada', 'V4V4V4', 55000, '555-555-5555', 'agonzalez@hotel.com', 'pasxefersword9', 'réceptionniste', 2.0, 6);
INSERT INTO employee VALUES (1000059, 'Park', 'Min-woo', 789, 'Granville St', 'Vancouver', 'BC', 'Canada', 'V5V5V5', 48000, '555-555-5555', 'mpark@hotel.com', 'passniukword10', 'administrateur', 0.0, 6);

-- hotel_id = 7
INSERT INTO employee VALUES (1000060, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M1M1', 50000, '416-123-4567', 'john.smith@hotel.com', 'passgvrhbword123', 'réceptionniste', 0, 7);
INSERT INTO employee VALUES (1000061, 'Garcia', 'Maria', 456, 'Second St', 'Toronto', 'Ontario', 'Canada', 'M2M2M2', 60000, '416-234-5678', 'maria.garcia@hotel.com', 'passbythword456', 'administrateur', 0, 7);
INSERT INTO employee VALUES (1000062, 'Lee', 'David', 789, 'Third St', 'Toronto', 'Ontario', 'Canada', 'M3M3M3', 55000, '416-345-6789', 'david.lee@hotel.com', 'passwobtrd789', 'cuisiner', 0, 7);
INSERT INTO employee VALUES (1000063, 'Kim', 'Soo', 111, 'Fourth St', 'Toronto', 'Ontario', 'Canada', 'M4M4M4', 40000, '416-456-7890', 'soo.kim@hotel.com', 'passwbhytordabc', 'nettoyeur', 0, 7);
INSERT INTO employee VALUES (1000064, 'Nguyen', 'Thi', 222, 'Fifth St', 'Toronto', 'Ontario', 'Canada', 'M5M5M5', 45000, '416-567-8901', 'thi.nguyen@hotels.com', 'passbhtworddef', 'gestionnaire', 0, 7);
INSERT INTO employee VALUES (1000065, 'Chen', 'Wei', 333, 'Sixth St', 'Toronto', 'Ontario', 'Canada', 'M6M6M6', 65000, '416-678-9012', 'wei.chen@hotel.com', 'passwobhtrdghi', 'administrateur', 0, 7);
INSERT INTO employee VALUES (1000066, 'Gupta', 'Raj', 444, 'Seventh St', 'Toronto', 'Ontario', 'Canada', 'M7M7M7', 75000, '416-789-0123', 'raj.gupta@hotel.com', 'pasbbytswordjkl', 'cuisiner', 0, 7);
INSERT INTO employee VALUES (1000067, 'Park', 'Min', 555, 'Eighth St', 'Toronto', 'Ontario', 'Canada', 'M8M8M8', 35000, '416-890-1234', 'min.park@hotel.com', 'passwbythordmno', 'nettoyeur', 0, 7);
INSERT INTO employee VALUES (1000068, 'Singh', 'Amit', 666, 'Ninth St', 'Toronto', 'Ontario', 'Canada', 'M9M9M9', 50000, '416-901-2345', 'amit.singh@hotel.com', 'pass45wordpqr', 'réceptionniste', 0, 7);
INSERT INTO employee VALUES (1000069, 'Wang', 'Ling', 777, 'Tenth St', 'Toronto', 'Ontario', 'Canada', 'M1M1M1', 60000, '416-012-3456', 'ling.wang@hotel.com', 'passw252ordstu', 'administrateur', 0, 7);

-- hotel_id = 8
INSERT INTO employee VALUES (1000070, 'Smith', 'John', 123, 'Main St', 'Toronto', 'ON', 'Canada', 'M1M1M1', 50000, '416-555-1234', 'john.smith@hotel.com', 'passwo7257rd123', 'réceptionniste', 2.5, 8);
INSERT INTO employee VALUES (1000071, 'Doe', 'Jane', 456, 'Maple Ave', 'Vancouver', 'BC', 'Canada', 'V5V5V5', 60000, '604-555-5678', 'jane.doe@hotel.com', 'passw275ord456', 'administrateur', 3.0, 8);
INSERT INTO employee VALUES (1000072, 'Johnson', 'Mike', 789, 'Oak St', 'Montreal', 'QC', 'Canada', 'H1H1H1', 55000, '514-555-9012', 'mike.johnson@hotels.com', 'passw22ord789', 'gestionnaire', 2.0, 8);
INSERT INTO employee VALUES (1000073, 'Lee', 'Emily', 101, 'Park Rd', 'Calgary', 'AB', 'Canada', 'T2T2T2', 45000, '403-555-3456', 'emily.lee@hotel.com', 'passwo27rd012', 'nettoyeur', 1.5, 8);
INSERT INTO employee VALUES (1000074, 'Garcia', 'David', 222, 'High St', 'Edmonton', 'AB', 'Canada', 'T5T5T5', 65000, '780-555-7890', 'david.garcia@hotel.com', 'pas287sword345', 'administrateur', 4.0, 8);
INSERT INTO employee VALUES (1000075, 'Liu', 'Sarah', 333, 'Elm St', 'Toronto', 'ON', 'Canada', 'M2M2M2', 50000, '416-555-2345', 'sarah.liu@hotel.com', 'password2678', 'réceptionniste', 2.5, 8);
INSERT INTO employee VALUES (1000076, 'Kim', 'Alex', 444, 'Cherry Ave', 'Vancouver', 'BC', 'Canada', 'V6V6V6', 55000, '604-555-6789', 'alex.kim@hotel.com', 'passwo86rd901', 'cuisiner', 2.0, 8);
INSERT INTO employee VALUES (1000077, 'Nguyen', 'Jason', 555, 'Pine St', 'Montreal', 'QC', 'Canada', 'H2H2H2', 45000, '514-555-1234', 'jason.nguyen@hotel.com', 'pass67word234', 'nettoyeur', 1.5, 8);
INSERT INTO employee VALUES (1000078, 'Chen', 'Sophie', 666, 'Maple Rd', 'Calgary', 'AB', 'Canada', 'T3T3T3', 60000, '403-555-5678', 'sophie.chen@hotel.com', 'passw876ord567', 'administrateur', 3.0, 8);
INSERT INTO employee VALUES (1000079, 'Patel', 'Ravi', 777, 'Oak Ave', 'Edmonton', 'AB', 'Canada', 'T6T6T6', 55000, '780-555-9012', 'ravi.patel@hotel.com', 'passwcdscord890', 'cuisiner', 2.0, 8);

-- hotel_id = 9
INSERT INTO employee VALUES (1000080, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M 1M1', 50000.00, '416-555-1234', 'john.smith@hotel.com', 'pascresword123456', 'réceptionniste', 0.0, 9);
INSERT INTO employee VALUES (1000081, 'Johnson', 'Emma', 456, 'High St', 'Vancouver', 'British Columbia', 'Canada', 'V6E 1B5', 60000.00, '604-555-5678', 'emma.johnson@hotel.com', 'pascresword123457', 'administrateur', 5.0, 9);
INSERT INTO employee VALUES (1000082, 'Davis', 'Michael', 789, 'Oak St', 'Calgary', 'Alberta', 'Canada', 'T2G 5B6', 55000.00, '403-555-9012', 'michael.davis@hotel.com', 'passwordcre123458', 'cuisiner', 3.0, 9);
INSERT INTO employee VALUES (1000083, 'Garcia', 'Maria', 321, 'Elm St', 'Montreal', 'Quebec', 'Canada', 'H2G 2N2', 45000.00, '514-555-3456', 'maria.garcia@hotel.com', 'passwoewrd123459', 'nettoyeur', 8.0, 9);
INSERT INTO employee VALUES (1000084, 'Brown', 'David', 654, 'Birch St', 'Halifax', 'Nova Scotia', 'Canada', 'B3H 4R2', 70000.00, '902-555-7890', 'david.brown@hotel.com', 'password123f23460', 'réceptionniste', 0.0, 9);
INSERT INTO employee VALUES (1000085, 'Lee', 'Sophia', 987, 'Cedar St', 'Ottawa', 'Ontario', 'Canada', 'K1N 6N5', 65000.00, '613-555-2345', 'sophia.lee@hotels.com', 'passwor4gtd123461', 'gestionnaire', 4.0, 9);
INSERT INTO employee VALUES (1000086, 'Martinez', 'Jose', 246, 'Pine St', 'Victoria', 'British Columbia', 'Canada', 'V8W 1Y2', 50000.00, '250-555-6789', 'jose.martinez@hotel.com', 'pahyhssword123462', 'cuisiner', 2.0, 9);
INSERT INTO employee VALUES (1000087, 'Lopez', 'Isabella', 369, 'Maple St', 'Winnipeg', 'Manitoba', 'Canada', 'R3C 3J1', 55000.00, '204-555-0123', 'isabella.lopez@hotel.com', 'passwojjujrd123463', 'nettoyeur', 7.0, 9);
INSERT INTO employee VALUES (1000088, 'Miller', 'Ethan', 582, 'Elmwood St', 'Quebec City', 'Quebec', 'Canada', 'G1V 0A6', 60000.00, '418-555-3456', 'ethan.miller@hotel.com', 'password1trh23464', 'réceptionniste', 0.0, 9);
INSERT INTO employee VALUES (1000089, 'Taylor', 'Olivia', 815, 'Oakwood St', 'Regina', 'Saskatchewan', 'Canada', 'S4R 2S2', 70000.00, '306-555-7890', 'olivia.taylor@hotel.com', 'passwozwrd123465', 'administrateur', 6.0, 9);

-- hotel_id = 10
INSERT INTO employee VALUES (1000090, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1S 3S4', 50000, '416-123-4567', 'john.smith@hotel.com', 'passwordythy123456', 'réceptionniste', 5, 10);
INSERT INTO employee VALUES (1000091, 'Johnson', 'Emily', 456, 'Queen St', 'Vancouver', 'British Columbia', 'Canada', 'V5V 2T2', 60000, '604-123-4567', 'emily.johnson@hotel.com', 'pasukykusword234567', 'administrateur', 8, 10);
INSERT INTO employee VALUES (1000092, 'Wang', 'David', 789, 'King St', 'Montreal', 'Quebec', 'Canada', 'H2X 1K2', 55000, '514-123-4567', 'david.wang@hotel.com', 'password34ikyui5678', 'cuisiner', 3, 10);
INSERT INTO employee VALUES (1000093, 'Garcia', 'Maria', 987, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M2N 5R5', 45000, '647-123-4567', 'maria.garcia@hotel.com', 'passwobgfgrd456789', 'nettoyeur', 7, 10);
INSERT INTO employee VALUES (1000094, 'Lee', 'Andrew', 654, 'Oak St', 'Vancouver', 'British Columbia', 'Canada', 'V6H 2K6', 70000, '778-123-4567', 'andrew.lee@hotel.com', 'passworbtrd567890', 'réceptionniste', 4, 10);
INSERT INTO employee VALUES (1000095, 'Kim', 'Soo', 321, 'Broadway', 'New York', 'New York', 'USA', '10007', 65000, '212-123-4567', 'soo.kim@hotels.com', 'password6brt78901', 'gestionnaire', 6, 10);
INSERT INTO employee VALUES (1000096, 'Singh', 'Aman', 246, 'Park Ave', 'San Francisco', 'California', 'USA', '94108', 55000, '415-123-4567', 'aman.singh@hotel.com', 'passwujyord789012', 'cuisiner', 3, 10);
INSERT INTO employee VALUES (1000097, 'Patel', 'Raj', 987, 'Bloor St', 'Toronto', 'Ontario', 'Canada', 'M5S 1N5', 50000, '647-234-5678', 'raj.patel@hotel.com', 'passworbtbtrd890123', 'nettoyeur', 9, 10);
INSERT INTO employee VALUES (1000098, 'Nguyen', 'Trang', 123, 'Westminster Ave', 'Vancouver', 'British Columbia', 'Canada', 'V6H 1E2', 55000, '604-234-5678', 'trang.nguyen@hotel.com', 'pasbtbsword901234', 'réceptionniste', 4, 10);
INSERT INTO employee VALUES (1000099, 'Gonzalez', 'Carlos', 789, 'St-DenisAvenue', 'Montreal', 'Quebec', 'Canada', 'H2W 2M1', 60000, '514-234-5678', 'carlos.gonzalez@hotel.com', 'passwbrtord012345', 'administrateur', 7, 10);

-- hotel_id = 11
INSERT INTO employee VALUES (1000100, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M 1M1', 50000.00, '555-555-1212', 'jsmith@hotel.com', 'password12btrb3456', 'réceptionniste', 0.0, 11);
INSERT INTO employee VALUES (1000101, 'Johnson', 'Sarah', 456, 'High St', 'Vancouver', 'British Columbia', 'Canada', 'V2V 2V2', 60000.00, '555-555-1213', 'sjohnson@hotel.com', 'pasbrtbsword123457', 'administrateur', 0.0, 11);
INSERT INTO employee VALUES (1000102, 'Garcia', 'Juan', 789, 'Oak St', 'Montreal', 'Quebec', 'Canada', 'H3H 3H3', 55000.00, '555-555-1214', 'jgarcia@hotel.com', 'password12rtb3458', 'cuisiner', 0.0, 11);
INSERT INTO employee VALUES (1000103, 'Brown', 'Emily', 321, 'Park Ave', 'Toronto', 'Ontario', 'Canada', 'M2M 2M2', 45000.00, '555-555-1215', 'ebrown@hotel.com', 'passworbrtbd123459', 'nettoyeur', 0.0, 11);
INSERT INTO employee VALUES (1000104, 'Kim', 'David', 654, 'Maple St', 'Vancouver', 'British Columbia', 'Canada', 'V1V 1V1', 65000.00, '555-555-1216', 'dkim@hotel.com', 'passworrbtd123460', 'réceptionniste', 0.0, 11);
INSERT INTO employee VALUES (1000105, 'Lee', 'Samantha', 987, 'Elm St', 'Montreal', 'Quebec', 'Canada', 'H4H 4H4', 55000.00, '555-555-1217', 'slee@hotel.com', 'passworfed123461', 'administrateur', 0.0, 11);
INSERT INTO employee VALUES (1000106, 'Martinez', 'Maria', 741, 'Willow St', 'Toronto', 'Ontario', 'Canada', 'M3M 3M3', 50000.00, '555-555-1218', 'mmartinez@hotels.com', 'passwvreord123462', 'gestionnaire', 0.0, 11);
INSERT INTO employee VALUES (1000107, 'Wang', 'Kevin', 369, 'Cedar St', 'Vancouver', 'British Columbia', 'Canada', 'V3V 3V3', 60000.00, '555-555-1219', 'kwang@hotel.com', 'passrvreword123463', 'nettoyeur', 0.0, 11);
INSERT INTO employee VALUES (1000108, 'Lopez', 'Carlos', 258, 'Pine St', 'Montreal', 'Quebec', 'Canada', 'H5H 5H5', 55000.00, '555-555-1220', 'clopez@hotel.com', 'passwooi;lrd123464', 'réceptionniste', 0.0, 11);
INSERT INTO employee VALUES (1000109, 'Nguyen', 'Thi', 963, 'Birch St', 'Toronto', 'Ontario', 'Canada', 'M4M 4M4', 45000.00, '555-555-1221', 'tnguyen@hotel.com', 'passworoi;d123465', 'administrateur', 0.0, 11);

-- hotel_id = 12
INSERT INTO employee VALUES (1000110, 'Smith', 'John', 123, 'Main St', 'Toronto', 'ON', 'Canada', 'A1B2C3', 50000.00, '555-1234', 'john.smith@hotel.com', 'pa8ssword541*2345', 'réceptionniste', 0.00, 12);
INSERT INTO employee VALUES (1000111, 'Johnson', 'Sara', 456, 'King St', 'Toronto', 'ON', 'Canada', 'B1C2D3', 60000.00, '555-5678', 'sara.johnson@hotel.com', 'passwo524r*d812345', 'administrateur', 0.00, 12);
INSERT INTO employee VALUES (1000112, 'Lee', 'Michael', 789, 'Queen St', 'Toronto', 'ON', 'Canada', 'C2D3E4', 55000.00, '555-2468', 'michael.lee@hotel.com', 'pass8wor*d12345', 'cuisiner', 0.00, 12);
INSERT INTO employee VALUES (1000113, 'Chen', 'Lisa', 1011, 'Yonge St', 'Toronto', 'ON', 'Canada', 'D3E4F5', 45000.00, '555-3690', 'lisa.chen@hotel.com', 'pa8sswor*d12345', 'nettoyeur', 0.00, 12);
INSERT INTO employee VALUES (1000114, 'Garcia', 'Juan', 1314, 'Dundas St', 'Toronto', 'ON', 'Canada', 'E4F5G6', 48000.00, '555-8024', 'juan.garcia@hotel.com', 'pass8word12345', 'réceptionniste', 0.00, 12);
INSERT INTO employee VALUES (1000115, 'Kim', 'Emily', 1516, 'Bloor St', 'Toronto', 'ON', 'Canada', 'F5G6H7', 52000.00, '555-1357', 'emily.kim@hotels.com', 'password12*345', 'gestionnaire', 0.00, 12);
INSERT INTO employee VALUES (1000116, 'Patel', 'Amit', 1718, 'College St', 'Toronto', 'ON', 'Canada', 'G6H7J8', 58000.00, '555-4680', 'amit.patel@hotel.com', 'pass*word12*345', 'cuisiner', 0.00, 12);
INSERT INTO employee VALUES (1000117, 'Nguyen', 'Thi', 1920, 'Spadina Ave', 'Toronto', 'ON', 'Canada', 'H7J8K9', 42000.00, '555-7913', 'thi.nguyen@hotel.com', 'pa*sswor*d12345', 'nettoyeur', 0.00, 12);
INSERT INTO employee VALUES (1000118, 'Wang', 'Kevin', 2122, 'Yonge St', 'Toronto', 'ON', 'Canada', 'J8K9L1', 51000.00, '555-1246', 'kevin.wang@hotel.com', 'pa*ssword12345', 'réceptionniste', 0.00, 12);
INSERT INTO employee VALUES (1000119, 'Davis', 'Jessica', 2324, 'Queen St', 'Toronto', 'ON', 'Canada', 'K9L1M2', 57000.00, '555-3579', 'jessica.davis@hotel.com', 'pas*sword12345', 'administrateur', 0.00, 12);

-- hotel_id = 13
INSERT INTO employee VALUES (1000120, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V 2L4', 50000.0, '416-123-4567', 'jsmith@hotel.com', 'p@ss254212', 'réceptionniste', 0.0, 13);
INSERT INTO employee VALUES (1000121, 'Doe', 'Jane', 456, 'Broadway', 'Vancouver', 'British Columbia', 'Canada', 'V6H 1E1', 60000.0, '604-234-5678', 'jdoe@hotel.com', 'pa$254$34', 'administrateur', 0.0, 13);
INSERT INTO employee VALUES (1000122, 'Chen', 'David', 789, '1st Ave', 'Calgary', 'Alberta', 'Canada', 'T2P 1J9', 55000.0, '403-345-6789', 'dchen@hotel.com', 'p@2452$$56', 'cuisiner', 5.0, 13);
INSERT INTO employee VALUES (1000123, 'Garcia', 'Maria', 101, '2nd St', 'Montreal', 'Quebec', 'Canada', 'H3A 1B1', 45000.0, '514-456-7890', 'mgarcia@hotel.com', 'pa2522$$78', 'nettoyeur', 10.0, 13);
INSERT INTO employee VALUES (1000124, 'Kim', 'Steven', 222, '3rd Ave', 'Halifax', 'Nova Scotia', 'Canada', 'B3H 1Y6', 52000.0, '902-567-8901', 'skim@hotel.com', 'p@2452$$90', 'réceptionniste', 0.0, 13);
INSERT INTO employee VALUES (1000125, 'Wang', 'Emily', 333, '4th St', 'Victoria', 'British Columbia', 'Canada', 'V8W 1E2', 58000.0, '250-678-9012', 'ewang@hotel.com', 'pa$2542$12', 'administrateur', 0.0, 13);
INSERT INTO employee VALUES (1000126, 'Lee', 'Kevin', 444, '5th Ave', 'Regina', 'Saskatchewan', 'Canada', 'S4P 3C8', 50000.0, '306-789-0123', 'klee@hotels.com', 'p@s2452s34', 'gestionnaire', 8.0, 13);
INSERT INTO employee VALUES (1000127, 'Liu', 'Jasmine', 555, '6th St', 'St. John’s', 'Newfoundland and Labrador', 'Canada', 'A1C 5X9', 48000.0, '709-890-1234', 'jliu@hotel.com', 'p242a$$56', 'nettoyeur', 12.0, 13);
INSERT INTO employee VALUES (1000128, 'Singh', 'Amit', 666, '7th Ave', 'Yellowknife', 'Northwest Territories', 'Canada', 'X1A 2P5', 65000.0, '867-901-2345', 'asinsgh@hotel.com', 'p@2*/ss34', 'cuisiner', 8.0, 13);
INSERT INTO employee VALUES (1000129, 'Gonzalez', 'Juan', 777, '8th St', 'Whitehorse', 'Yukon', 'Canada', 'Y1A 2N3', 54000.0, '867-456-7890', 'jgonzalez@hotel.com', 'pa2452$$78', 'réceptionniste', 0.0, 13);

-- hotel_id = 14
INSERT INTO employee VALUES (1000130, 'Smith', 'John', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V2L4', 50000, '416-123-4567', 'john.smith@hotel.com', 'pas542sword', 'réceptionniste', 2.5, 14);
INSERT INTO employee VALUES (1000131, 'Garcia', 'Maria', 5678, 'Elm St', 'Vancouver', 'British Columbia', 'Canada', 'V6B2T9', 55000, '604-234-5678', 'maria.garcia@hotel.com', 'pas452dfvsword', 'administrateur', 3.0, 14);
INSERT INTO employee VALUES (1000132, 'Kim', 'David', 4321, 'Oak St', 'Calgary', 'Alberta', 'Canada', 'T2P2V7', 60000, '403-345-6789', 'david.kim@hotel.com', 'pass242word', 'cuisiner', 1.5, 14);
INSERT INTO employee VALUES (1000133, 'Chen', 'Amy', 9876, 'Maple St', 'Montreal', 'Quebec', 'Canada', 'H3A1M8', 55000, '514-456-7890', 'amy.chen@hotel.com', 'pasvdfsword', 'nettoyeur', 2.0, 14);
INSERT INTO employee VALUES (1000134, 'Gupta', 'Rajesh', 3456, 'Cedar St', 'Halifax', 'Nova Scotia', 'Canada', 'B3H2P6', 70000, '902-567-8901', 'rajesh.gupta@hotel.com', 'padfvssword', 'réceptionniste', 1.0, 14);
INSERT INTO employee VALUES (1000135, 'Nguyen', 'Thi', 8765, 'Birch St', 'Ottawa', 'Ontario', 'Canada', 'K1N6N5', 45000, '613-678-9012', 'thi.nguyen@hotel.com', 'passdvword', 'administrateur', 4.5, 14);
INSERT INTO employee VALUES (1000136, 'Lee', 'Andrew', 2468, 'Pine St', 'Winnipeg', 'Manitoba', 'Canada', 'R3M0C5', 65000, '204-789-0123', 'andrew.lee@hotels.com', 'pavfdvdssword', 'gestionnaire', 2.0, 14);
INSERT INTO employee VALUES (1000137, 'Singh', 'Jaspreet', 1357, 'Spruce St', 'Regina', 'Saskatchewan', 'Canada', 'S4P3Y2', 50000, '306-890-1234', 'jaspreet.singh@hotel.com', 'pasdfvdvsword', 'nettoyeur', 1.5, 14);
INSERT INTO employee VALUES (1000138, 'Wang', 'Emily', 3691, 'Cypress St', 'Edmonton', 'Alberta', 'Canada', 'T6G2P8', 55000, '780-901-2345', 'emily.wang@hotel.com', 'passdvword', 'réceptionniste', 2.5, 14);
INSERT INTO employee VALUES (1000139, 'Gonzalez', 'Luis', 8023, 'Walnut St', 'Victoria', 'British Columbia', 'Canada', 'V8W1W4', 60000, '250-345-6789', 'luis.gonzalez@hotel.com', 'pasvvvvvsword', 'administrateur', 3.5, 14);

-- hotel_id = 15
INSERT INTO employee VALUES (1000140, 'Doe', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'A1B 2C3', 50000.00, '123-456-7890', 'john.doe@hotel.com', 'passworwewd123', 'réceptionniste', 0.0, 15);
INSERT INTO employee VALUES (1000141, 'Smith', 'Jane', 456, 'Elm St', 'Vancouver', 'British Columbia', 'Canada', 'V1X 2Y3', 55000.00, '234-567-8901', 'jane.smith@hotel.com', 'paswedwesword456', 'administrateur', 0.0, 15);
INSERT INTO employee VALUES (1000142, 'Kim', 'David', 789, 'Oak St', 'Montreal', 'Quebec', 'Canada', 'H2X 3Y7', 60000.00, '345-678-9012', 'david.kim@hotels.com', 'passwwdeord789', 'gestionnaire', 0.0, 15);
INSERT INTO employee VALUES (1000143, 'Chen', 'Amy', 234, 'Maple St', 'Calgary', 'Alberta', 'Canada', 'T2R 0B1', 45000.00, '456-789-0123', 'amy.chen@hotel.com', 'passwodwerdabc', 'nettoyeur', 0.0, 15);
INSERT INTO employee VALUES (1000144, 'Gupta', 'Raj', 567, 'Cedar St', 'Ottawa', 'Ontario', 'Canada', 'K1P 5E9', 55000.00, '567-890-1234', 'raj.gupta@hotel.com', 'passwowdrddef', 'réceptionniste', 0.0, 15);
INSERT INTO employee VALUES (1000145, 'Wang', 'Linda', 890, 'Pine St', 'Halifax', 'Nova Scotia', 'Canada', 'B3H 4P7', 65000.00, '678-901-2345', 'linda.wang@hotel.com', 'passwdwordghi', 'administrateur', 0.0, 15);
INSERT INTO employee VALUES (1000146, 'Singh', 'Amit', 345, 'Birch St', 'Victoria', 'British Columbia', 'Canada', 'V8W 2A2', 60000.00, '789-012-3456', 'amit.singh@hotel.com', 'passwwdordjkl', 'cuisiner', 0.0, 15);
INSERT INTO employee VALUES (1000147, 'Liu', 'Grace', 678, 'Spruce St', 'Winnipeg', 'Manitoba', 'Canada', 'R3B 2G6', 50000.00, '890-123-4567', 'grace.liu@hotel.com', 'passwowderdmno', 'nettoyeur', 0.0, 15);
INSERT INTO employee VALUES (1000148, 'Patel', 'Anjali', 901, 'Holly St', 'Regina', 'Saskatchewan', 'Canada', 'S4P 3C8', 55000.00, '901-234-5678', 'anjali.patel@hotel.com', 'pasdwswordpqr', 'réceptionniste', 0.0, 15);
INSERT INTO employee VALUES (1000149, 'Nguyen', 'Daniel', 234, 'Walnut St', 'Edmonton', 'Alberta', 'Canada', 'T5J 1N9', 60000.00, '012-345-6789', 'daniel.nguyen@hotel.com', 'pasdwswordstu', 'administrateur', 0.0, 15);

-- hotel_id = 16
INSERT INTO employee VALUES (1000150, 'Smith', 'John', 1234, 'Main St', 'Toronto', 'ON', 'Canada', 'M1M 1M1', 50000.00, '555-555-1212', 'john.smith@hotel.com', 'passwodwerd01', 'réceptionniste', 5.0, 16);
INSERT INTO employee VALUES (1000151, 'Jones', 'Karen', 4321, 'Oak St', 'Vancouver', 'BC', 'Canada', 'V6H 1V1', 55000.00, '555-555-1313', 'karen.jones@hotel.com', 'passdwdeword02', 'administrateur', 7.0, 16);
INSERT INTO employee VALUES (1000152, 'Williams', 'Emily', 5678, 'Cedar St', 'Calgary', 'AB', 'Canada', 'T2P 2G8', 60000.00, '555-555-1414', 'emily.williams@hotels.com', 'padwdssword03', 'gestionnaire', 3.5, 16);
INSERT INTO employee VALUES (1000153, 'Brown', 'Michael', 9876, 'Elm St', 'Montreal', 'QC', 'Canada', 'H2W 1L4', 45000.00, '555-555-1515', 'michael.brown@hotel.com', 'passdweword04', 'nettoyeur', 6.0, 16);
INSERT INTO employee VALUES (1000154, 'Davis', 'Sarah', 2468, 'Maple St', 'Toronto', 'ON', 'Canada', 'M4C 1M4', 52000.00, '555-555-1616', 'sarah.davis@hotel.com', 'passdwfregword05', 'réceptionniste', 4.0, 16);
INSERT INTO employee VALUES (1000155, 'Garcia', 'Carlos', 1357, 'Pine St', 'Vancouver', 'BC', 'Canada', 'V6E 1C5', 58000.00, '555-555-1717', 'carlos.garcia@hotel.com', 'passyukuword06', 'administrateur', 8.5, 16);
INSERT INTO employee VALUES (1000156, 'Martinez', 'Maria', 8642, 'Birch St', 'Calgary', 'AB', 'Canada', 'T2P 2H6', 62000.00, '555-555-1818', 'maria.martinez@hotel.com', 'paskiuksword07', 'cuisiner', 3.0, 16);
INSERT INTO employee VALUES (1000157, 'Lopez', 'Juan', 9753, 'Cherry St', 'Montreal', 'QC', 'Canada', 'H2W 1J9', 47000.00, '555-555-1919', 'juan.lopez@hotel.com', 'passwohtyhytrd08', 'nettoyeur', 5.5, 16);
INSERT INTO employee VALUES (1000158, 'Wilson', 'Jessica', 3579, 'Oakwood Ave', 'Toronto', 'ON', 'Canada', 'M4C 1N1', 54000.00, '555-555-2020', 'jessica.wilson@hotel.com', 'passrthtrword09', 'réceptionniste', 6.0, 16);
INSERT INTO employee VALUES (1000159, 'Gonzalez', 'Pedro', 2468, 'Pinecrest Dr', 'Vancouver', 'BC', 'Canada', 'V6E 1M4', 60000.00, '555-555-2121', 'pedro.gonzalez@hotel.com', 'passtrjyword10', 'administrateur', 9.0, 16);

-- hotel_id = 17
INSERT INTO employee VALUES (1000160, 'Smith', 'John', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'A1B2C3', 50000, '123-456-7890', 'john.smith@hotel.com', 'passworthyrrd1', 'réceptionniste', 0, 17);
INSERT INTO employee VALUES (1000161, 'Johnson', 'Emily', 5678, 'Park Ave', 'Montreal', 'Quebec', 'Canada', 'D4E5F6', 55000, '234-567-8901', 'emily.johnson@hotels.com', 'passxewfeword2', 'gestionnaire', 2.5, 17);
INSERT INTO employee VALUES (1000162, 'Chen', 'Amy', 2468, 'Broadway', 'Vancouver', 'British Columbia', 'Canada', 'G7H8I9', 60000, '345-678-9012', 'amy.chen@hotel.com', 'passwexword3', 'cuisiner', 1, 17);
INSERT INTO employee VALUES (1000163, 'Garcia', 'Carlos', 1357, 'Main St', 'Toronto', 'Ontario', 'Canada', 'J1K2L3', 45000, '456-789-0123', 'carlos.garcia@hotel.com', 'passytjword4', 'nettoyeur', 0.5, 17);
INSERT INTO employee VALUES (1000164, 'Wilson', 'Sarah', 8765, 'King St', 'Ottawa', 'Ontario', 'Canada', 'M4N5O6', 52000, '567-890-1234', 'sarah.wilson@hotel.com', 'passwogrthrd5', 'réceptionniste', 1.5, 17);
INSERT INTO employee VALUES (1000165, 'Zhang', 'Michael', 4321, 'Granville St', 'Vancouver', 'British Columbia', 'Canada', 'P7Q8R9', 58000, '678-901-2345', 'michael.zhang@hotel.com', 'prthrassword6', 'administrateur', 3, 17);
INSERT INTO employee VALUES (1000166, 'Lee', 'Jenny', 7531, 'Main St', 'Toronto', 'Ontario', 'Canada', 'S1T2U3', 65000, '789-012-3456', 'jenny.lee@hotel.com', 'passwrthyord7', 'cuisiner', 2, 17);
INSERT INTO employee VALUES (1000167, 'Gomez', 'Miguel', 9876, 'King St', 'Ottawa', 'Ontario', 'Canada', 'V4W5X6', 42000, '890-123-4567', 'miguel.gomez@hotel.com', 'pasthrhsword8', 'nettoyeur', 1, 17);
INSERT INTO employee VALUES (1000168, 'Chen', 'Tina', 1111, 'Broadway', 'Vancouver', 'British Columbia', 'Canada', 'Y7Z8A9', 55000, '901-234-5678', 'tina.chen@hotel.com', 'passwrhtrord9', 'réceptionniste', 1, 17);
INSERT INTO employee VALUES (1000169, 'Liu', 'Kevin', 3698, 'Granville St', 'Vancouver', 'British Columbia', 'Canada', 'B1C2D3', 62000, '012-345-6789', 'kevin.liu@hotel.com', 'passrthtrword10', 'administrateur', 2, 17);

-- hotel_id = 18
INSERT INTO employee VALUES (1000170, 'Doe', 'John', 1234, 'Main St', 'Montreal', 'Quebec', 'Canada', 'H2X 2T2', 50000.00, '514-123-4567', 'john.doe@hotel.com', 'passwohrthrd01', 'réceptionniste', 10.0, 18);
INSERT INTO employee VALUES (1000171, 'Smith', 'Jane', 5678, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M5V 2Z4', 60000.00, '416-555-1234', 'jane.smith@hotel.com', 'pasxewwsword02', 'administrateur', 15.0, 18);
INSERT INTO employee VALUES (1000172, 'Lee', 'David', 2468, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M4N 3N1', 45000.00, '416-789-4567', 'david.lee@hotels.com', 'passxwr4word03', 'gestionnaire', 0.0, 18);
INSERT INTO employee VALUES (1000173, 'Garcia', 'Maria', 9876, 'Gran Via', 'Madrid', 'Madrid', 'Spain', '28013', 55000.00, '+34 91 123 45 67', 'maria.garcia@hotel.com', 'pasx4sword04', 'réceptionniste', 12.0, 18);
INSERT INTO employee VALUES (1000174, 'Kim', 'Soo-Jin', 4321, 'Myeong-dong', 'Seoul', 'Gangnam', 'South Korea', '04536', 70000.00, '+82 2-1234-5678', 'sj.kim@hotel.com', 'passwouyjjrd05', 'administrateur', 20.0, 18);
INSERT INTO employee VALUES (1000175, 'Singh', 'Rajesh', 9999, 'Chandni Chowk', 'Delhi', 'Delhi', 'India', '110006', 40000.00, '+91 11 2345 6789', 'rajesh.singh@hotel.com', 'passyujuyjword06', 'cuisiner', 0.0, 18);
INSERT INTO employee VALUES (1000176, 'Chen', 'Hui', 1111, 'Nanjing Rd', 'Shanghai', 'Jingan', 'China', '200000', 60000.00, '+86 21 1234 5678', 'hui.chen@hotel.com', 'passwfefrcord07', 'réceptionniste', 11.5, 18);
INSERT INTO employee VALUES (1000177, 'Bauer', 'Klaus', 5555, 'Königsallee', 'Düsseldorf', 'North Rhine-Westphalia', 'Germany', '40212', 55000.00, '+49 211 1234567', 'klaus.bauer@hotel.com', 'pastgrgrsword08', 'administrateur', 18.5, 18);
INSERT INTO employee VALUES (1000178, 'Nguyen', 'Minh', 7777, 'Trang Tien', 'Hanoi', 'Hoan Kiem', 'Vietnam', '10000', 45000.00, '+84 24 12345678', 'minh.nguyen@hotel.com', 'passwjuyjord09', 'cuisiner', 0.0, 18);
INSERT INTO employee VALUES (1000179, 'Garcia', 'Carlos', 4567, 'Avenida Paulista', 'São Paulo', 'São Paulo', 'Brazil', '01311-000', 65000.00, '+55 11 2345-6789', 'carlos.garcia@hotel.com', 'pasjuyjsword10', 'réceptionniste', 13.0, 18);

-- hotel_id = 19
INSERT INTO employee VALUES (1000180, 'Smith', 'John', 1234, 'Main St', 'Toronto', 'ON', 'Canada', 'M1M1M1', 50000, '416-123-4567', 'john.smith@hotel.com', 'passwor4cecfsd01', 'réceptionniste', 2.5, 19);
INSERT INTO employee VALUES (1000181, 'Garcia', 'Maria', 5678, '2nd Ave', 'Vancouver', 'BC', 'Canada', 'V1V1V1', 60000, '604-234-5678', 'maria.garcia@hotel.com', 'passcwrwcword02', 'administrateur', 3.0, 19);
INSERT INTO employee VALUES (1000182, 'Kim', 'David', 4321, '3rd St', 'Calgary', 'AB', 'Canada', 'T1T1T1', 45000, '403-345-6789', 'david.kim@hotel.com', 'passwojyujrd03', 'cuisiner', 2.0, 19);
INSERT INTO employee VALUES (1000183, 'Chen', 'Sophia', 8765, '4th Ave', 'Montreal', 'QC', 'Canada', 'H1H1H1', 55000, '514-456-7890', 'sophia.chen@hotels.com', 'passwortyjjd04', 'gestionnaire', 1.5, 19);
INSERT INTO employee VALUES (1000184, 'Lee', 'Emily', 2468, '5th St', 'Ottawa', 'ON', 'Canada', 'K1K1K1', 48000, '613-567-8901', 'emily.lee@hotel.com', 'pasgesword05', 'réceptionniste', 2.0, 19);
INSERT INTO employee VALUES (1000185, 'Gupta', 'Rahul', 1357, '6th Ave', 'Edmonton', 'AB', 'Canada', 'T5T5T5', 65000, '780-678-9012', 'rahul.gupta@hotel.com', 'passwegrgord06', 'administrateur', 3.5, 19);
INSERT INTO employee VALUES (1000186, 'Wang', 'Sophie', 9753, '7th St', 'Victoria', 'BC', 'Canada', 'V2V2V2', 42000, '250-789-0123', 'sophie.wang@hotel.com', 'passwgergord07', 'cuisiner', 1.5, 19);
INSERT INTO employee VALUES (1000187, 'Nguyen', 'Tuan', 8642, '8th Ave', 'Halifax', 'NS', 'Canada', 'B3B3B3', 52000, '902-890-1234', 'tuan.nguyen@hotel.com', 'passeergeword08', 'nettoyeur', 2.0, 19);
INSERT INTO employee VALUES (1000188, 'Park', 'Min', 2468, '9th St', 'Winnipeg', 'MB', 'Canada', 'R3R3R3', 48000, '204-901-2345', 'min.park@hotel.com', 'passwgegord09', 'réceptionniste', 1.5, 19);
INSERT INTO employee VALUES (1000189, 'Liu', 'Kevin', 1357, '10th Ave', 'Quebec City', 'QC', 'Canada', 'G1G1G1', 60000, '418-012-3456', 'kevin.liu@hotel.com', 'pagegessword10', 'administrateur', 3.0, 19);

-- hotel_id = 20
INSERT INTO employee VALUES (1000190, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M1M1', 50000.00, '555-1234', 'john.smith@hotel.com', 'passwergreord123456', 'réceptionniste', 0.00, 20);
INSERT INTO employee VALUES (1000191, 'Johnson', 'Sarah', 456, 'First Ave', 'Vancouver', 'British Columbia', 'Canada', 'V6B3L1', 60000.00, '555-5678', 'sarah.johnson@hotel.com', 'pagegessword123457', 'administrateur', 5.00, 20);
INSERT INTO employee VALUES (1000192, 'Kim', 'David', 789, 'Second St', 'Montreal', 'Quebec', 'Canada', 'H3C1H1', 40000.00, '555-9012', 'david.kim@hotels.com', 'passwordegg123458', 'gestionnaire', 2.50, 20);
INSERT INTO employee VALUES (1000193, 'Lee', 'Jessica', 1011, 'Third Ave', 'Calgary', 'Alberta', 'Canada', 'T2P2T7', 55000.00, '555-3456', 'jessica.lee@hotel.com', 'passgegword123459', 'nettoyeur', 1.50, 20);
INSERT INTO employee VALUES (1000194, 'Brown', 'Michael', 1213, 'Fourth St', 'Edmonton', 'Alberta', 'Canada', 'T5J2B6', 45000.00, '555-7890', 'michael.brown@hotel.com', 'passworgegd123460', 'réceptionniste', 0.00, 20);
INSERT INTO employee VALUES (1000195, 'Davis', 'Emily', 1415, 'Fifth Ave', 'Ottawa', 'Ontario', 'Canada', 'K1N6N5', 65000.00, '555-2345', 'emily.davis@hotel.com', 'passwogegrd123461', 'administrateur', 4.00, 20);
INSERT INTO employee VALUES (1000196, 'Wilson', 'Daniel', 1617, 'Sixth St', 'Halifax', 'Nova Scotia', 'Canada', 'B3H3A7', 42000.00, '555-6789', 'daniel.wilson@hotel.com', 'passwgegord123462', 'cuisiner', 3.00, 20);
INSERT INTO employee VALUES (1000197, 'Anderson', 'Olivia', 1819, 'Seventh Ave', 'Victoria', 'British Columbia', 'Canada', 'V8W2C2', 58000.00, '555-1234', 'olivia.anderson@hotel.com', 'pasgggsword123463', 'nettoyeur', 1.00, 20);
INSERT INTO employee VALUES (1000198, 'Taylor', 'William', 2021, 'Eighth St', 'Winnipeg', 'Manitoba', 'Canada', 'R3C0V8', 51000.00, '555-5678', 'william.taylor@hotel.com', 'passworegtgd123464', 'réceptionniste', 0.50, 20);
INSERT INTO employee VALUES (1000199, 'Martin', 'Emma', 2223, 'Ninth Ave', 'Regina', 'Saskatchewan', 'Canada', 'S4P0V5', 48000.00, '555-9012', 'emma.martin@hotel.com', 'passworeggrd123465', 'administrateur', 6.00, 20);

-- hotel_id = 21
INSERT INTO employee VALUES (1000200, 'Smith', 'John', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M 1M1', 50000.00, '416-123-4567', 'john.smith@hotel.com', 'passworgeged12345678', 'réceptionniste', 0.0, 21);
INSERT INTO employee VALUES (1000201, 'Johnson', 'Michael', 5678, 'Oak Ave', 'Vancouver', 'British Columbia', 'Canada', 'V1V 1V1', 75000.00, '604-234-5678', 'michael.johnson@hotel.com', 'passwhhhord12345679', 'administrateur', 0.0, 21);
INSERT INTO employee VALUES (1000202, 'Garcia', 'Sofia', 9012, 'Elm St', 'Montreal', 'Quebec', 'Canada', 'H2H 2H2', 60000.00, '514-345-6789', 'sofia.garcia@hotel.com', 'passworrffd12345670', 'cuisiner', 0.0, 21);
INSERT INTO employee VALUES (1000203, 'Brown', 'Emma', 3456, 'Maple Rd', 'Calgary', 'Alberta', 'Canada', 'T1T 1T1', 45000.00, '403-456-7890', 'emma.brown@hotel.com', 'passwordjj12345671', 'nettoyeur', 0.0, 21);
INSERT INTO employee VALUES (1000204, 'Wilson', 'David', 7890, 'Birch Ln', 'Ottawa', 'Ontario', 'Canada', 'K1K 1K1', 65000.00, '613-567-8901', 'david.wilson@hotel.com', 'passwordfb12345672', 'réceptionniste', 0.0, 21);
INSERT INTO employee VALUES (1000205, 'Lee', 'Michelle', 2345, 'Cedar St', 'Halifax', 'Nova Scotia', 'Canada', 'B2B 2B2', 55000.00, '902-678-9012', 'michelle.lee@hotel.com', 'passwoccrd12345673', 'administrateur', 0.0, 21);
INSERT INTO employee VALUES (1000206, 'Martinez', 'Carlos', 6789, 'Pine Ave', 'Winnipeg', 'Manitoba', 'Canada', 'R3R 3R3', 70000.00, '204-789-0123', 'carlos.martinez@hotel.com', 'passworeecd12345674', 'cuisiner', 0.0, 21);
INSERT INTO employee VALUES (1000207, 'Taylor', 'Emily', 1234, 'Main St', 'Regina', 'Saskatchewan', 'Canada', 'S4S 4S4', 50000.00, '306-901-2345', 'emily.taylor@hotel.com', 'password1ce2345675', 'nettoyeur', 0.0, 21);
INSERT INTO employee VALUES (1000208, 'Anderson', 'James', 5678, 'Oak Ave', 'Victoria', 'British Columbia', 'Canada', 'V8V 8V8', 75000.00, '778-123-4567', 'james.anderson@hotel.com', 'passwocerd12345676', 'réceptionniste', 0.0, 21);
INSERT INTO employee VALUES (1000209, 'Nguyen', 'Sophie', 9012, 'Elm St', 'Quebec City', 'Quebec', 'Canada', 'G1G 1G1', 60000.00, '418-234-5678', 'sophie.nguyen@hotels.com', 'password12ecce345677', 'gestionnaire', 0.0, 21);

-- hotel_id = 22
INSERT INTO employee VALUES (1000210, 'Doe', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V2B4', 50000, '123-456-7890', 'johndoe@hotel.com', 'passwcecord123', 'réceptionniste', 0, 22);
INSERT INTO employee VALUES (1000211, 'Smith', 'Jane', 456, 'First St', 'Montreal', 'Quebec', 'Canada', 'H3A1K3', 65000, '234-567-8901', 'janesmith@hotel.com', 'pascccesword456', 'administrateur', 0, 22);
INSERT INTO employee VALUES (1000212, 'Lee', 'David', 789, 'Second St', 'Vancouver', 'British Columbia', 'Canada', 'V6B1H6', 45000, '345-678-9012', 'davidlee@hotel.com', 'paceccgessword789', 'cuisiner', 0, 22);
INSERT INTO employee VALUES (1000213, 'Kim', 'Mia', 345, 'Third St', 'Toronto', 'Ontario', 'Canada', 'M4W1J5', 55000, '456-789-0123', 'miakim@hotels.com', 'password1gc42345', 'gestionnaire', 0, 22);
INSERT INTO employee VALUES (1000214, 'Park', 'Andrew', 678, 'Fourth St', 'Calgary', 'Alberta', 'Canada', 'T2P2V7', 75000, '567-890-1234', 'andrewpark@hotel.com', 'pass5g4bword45678', 'administrateur', 0, 22);
INSERT INTO employee VALUES (1000215, 'Wong', 'Emily', 910, 'Fifth St', 'Ottawa', 'Ontario', 'Canada', 'K1P5H9', 60000, '678-901-2345', 'emilywong@hotel.com', 'password745v8901', 'réceptionniste', 0, 22);
INSERT INTO employee VALUES (1000216, 'Chen', 'Kevin', 234, 'Sixth St', 'Toronto', 'Ontario', 'Canada', 'M5J2T3', 50000, '789-012-3456', 'kevinchen@hotel.com', 'passwor4vcd123456', 'cuisiner', 0, 22);
INSERT INTO employee VALUES (1000217, 'Nguyen', 'Linh', 567, 'Seventh St', 'Vancouver', 'British Columbia', 'Canada', 'V6C2R6', 55000, '890-123-4567', 'linhnguyen@hotel.com', 'pasc54csword456789', 'nettoyeur', 0, 22);
INSERT INTO employee VALUES (1000218, 'Garcia', 'Jose', 890, 'Eighth St', 'Montreal', 'Quebec', 'Canada', 'H4B1T4', 65000, '901-234-5678', 'josegarcia@hotel.com', 'passcy5hword789012', 'administrateur', 0, 22);
INSERT INTO employee VALUES (1000219, 'Zhang', 'Hannah',1011, 'Ninth St', 'Toronto', 'Ontario', 'Canada', 'M6G3B2', 70000, '012-345-6789', 'hannahzhang@hotel.com', 'pasc445sword1234567', 'réceptionniste', 0, 22);

-- hotel_id = 23
INSERT INTO employee VALUES (1000220, 'Doe', 'John', 123, 'Main St', 'Toronto', 'ON', 'Canada', 'M1M 1M1', 50000.0, '416-555-1234', 'johndoe@hotel.com', 'passwoh5vj5rd1', 'réceptionniste', 0.0, 23);
INSERT INTO employee VALUES (1000221, 'Smith', 'Jane', 456, 'Elm St', 'Montreal', 'QC', 'Canada', 'H1H 1H1', 60000.0, '514-555-5678', 'janesmith@hotel.com', 'pas5v5sword2', 'administrateur', 5.0, 23);
INSERT INTO employee VALUES (1000222, 'Johnson', 'Robert', 789, 'Oak St', 'Vancouver', 'BC', 'Canada', 'V1V 1V1', 55000.0, '604-555-9012', 'robertjohnson@hotel.com', 'passwv5hsord3', 'cuisiner', 10.0, 23);
INSERT INTO employee VALUES (1000223, 'Lee', 'Sarah', 1011, 'Maple St', 'Calgary', 'AB', 'Canada', 'T1T 1T1', 45000.0, '403-555-3456', 'sarahlee@hotel.com', 'pasxeg4sword4', 'nettoyeur', 0.0, 23);
INSERT INTO employee VALUES (1000224, 'Garcia', 'Maria', 1314, 'Pine St', 'Toronto', 'ON', 'Canada', 'M2M 2M2', 65000.0, '416-555-7890', 'mariagarcia@hotel.com', 'passxg45word5', 'réceptionniste', 2.5, 23);
INSERT INTO employee VALUES (1000225, 'Brown', 'David', 1516, 'Cedar St', 'Montreal', 'QC', 'Canada', 'H2H 2H2', 70000.0, '514-555-1234', 'davidbrown@hotels.com', 'pasgx6xhsword6', 'gestionnaire', 7.5, 23);
INSERT INTO employee VALUES (1000226, 'Wilson', 'Emily', 1718, 'Birch St', 'Vancouver', 'BC', 'Canada', 'V2V 2V2', 60000.0, '604-555-5678', 'emilywilson@hotel.com', 'passn8bword7', 'cuisiner', 15.0, 23);
INSERT INTO employee VALUES (1000227, 'Kim', 'Jason', 1920, 'Spruce St', 'Calgary', 'AB', 'Canada', 'T2T 2T2', 55000.0, '403-555-9012', 'jasonkim@hotel.com', 'passwctgexord8', 'nettoyeur', 0.0, 23);
INSERT INTO employee VALUES (1000228, 'Chen', 'Sophia', 2122, 'Oak St', 'Toronto', 'ON', 'Canada', 'M3M 3M3', 75000.0, '416-555-3456', 'sophiachen@hotel.com', 'passxrxword9', 'réceptionniste', 5.0, 23);
INSERT INTO employee VALUES (1000229, 'Nguyen', 'Kevin', 2324, 'Elm St', 'Montreal', 'QC', 'Canada', 'H3H 3H3', 80000.0, '514-555-7890', 'kevinnguyen@hotel.com', 'passxegrgword10', 'administrateur', 10.0, 23);

-- hotel_id = 24
INSERT INTO employee VALUES (1000230, 'Smith', 'John', 1234, 'Main St', 'Vancouver', 'BC', 'Canada', 'V6B 2T9', 50000, '604-555-1234', 'john.smith@hotel.com', 'pawewwssword1', 'réceptionniste', 0, 24);
INSERT INTO employee VALUES (1000231, 'Johnson', 'Emily', 5678, 'Oak St', 'Vancouver', 'BC', 'Canada', 'V6M 2G8', 60000, '604-555-5678', 'emily.johnson@hotel.com', 'pasxrfsword2', 'administrateur', 0, 24);
INSERT INTO employee VALUES (1000232, 'Chen', 'Lily', 9012, 'Granville St', 'Vancouver', 'BC', 'Canada', 'V6P 4V7', 55000, '604-555-9012', 'lily.chen@hotel.com', 'pasxresxword3', 'cuisiner', 0, 24);
INSERT INTO employee VALUES (1000233, 'Garcia', 'Carlos', 3456, 'Davie St', 'Vancouver', 'BC', 'Canada', 'V6E 1N2', 65000, '604-555-3456', 'carlos.garcia@hotel.com', 'passxrereword4', 'nettoyeur', 0, 24);
INSERT INTO employee VALUES (1000234, 'Kim', 'Ji-hye', 7890, 'Cambie St', 'Vancouver', 'BC', 'Canada', 'V6B 2K9', 55000, '604-555-7890', 'ji-hye.kim@hotels.com', 'pasxhysword5', 'gestionnaire', 0, 24);
INSERT INTO employee VALUES (1000235, 'Wang', 'Wei', 2468, 'Robson St', 'Vancouver', 'BC', 'Canada', 'V6B 3K9', 60000, '604-555-2468', 'wei.wang@hotel.com', 'passjyujuword6', 'administrateur', 0, 24);
INSERT INTO employee VALUES (1000236, 'Lopez', 'Maria', 1357, 'Denman St', 'Vancouver', 'BC', 'Canada', 'V6G 2M5', 50000, '604-555-1357', 'maria.lopez@hotel.com', 'pash56h6sword7', 'cuisiner', 0, 24);
INSERT INTO employee VALUES (1000237, 'Gupta', 'Rahul', 8642, 'Main St', 'Vancouver', 'BC', 'Canada', 'V6B 2T9', 55000, '604-555-8642', 'rahul.gupta@hotel.com', 'pass56ht5word8', 'nettoyeur', 0, 24);
INSERT INTO employee VALUES (1000238, 'Lee', 'Min-ji', 9753, 'Oak St', 'Vancouver', 'BC', 'Canada', 'V6M 2G8', 65000, '604-555-9753', 'min-ji.lee@hotel.com', 'passh5hword9', 'réceptionniste', 0, 24);
INSERT INTO employee VALUES (1000239, 'Nguyen','Hai', 1234, 'Granville St', 'Vancouver', 'BC', 'Canada', 'V6P 4V7', 60000, '604-555-1234', 'hai.nguyen@hotel.com', 'pah5h5ssword10', 'administrateur', 0, 24);

-- hotel_id = 25
INSERT INTO employee VALUES (1000240, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'A1A 1A1', 50000, '416-555-1234', 'john.smith@hotel.com', 'pchxassword1', 'réceptionniste', 0, 25);
INSERT INTO employee VALUES (1000241, 'Lee', 'Jessica', 456, 'High St', 'Vancouver', 'British Columbia', 'Canada', 'B2B 2B2', 60000, '604-555-5678', 'jessica.lee@hotel.com', 'passxhword2', 'administrateur', 10, 25);
INSERT INTO employee VALUES (1000242, 'Garcia', 'Carlos', 789, 'First Ave', 'Montreal', 'Quebec', 'Canada', 'C3C 3C3', 45000, '514-555-9012', 'carlos.garcia@hotel.com', 'pxhh6assword3', 'cuisiner', 5, 25);
INSERT INTO employee VALUES (1000243, 'Nguyen', 'Thu', 101, 'Second St', 'Calgary', 'Alberta', 'Canada', 'D4D 4D4', 55000, '403-555-3456', 'thu.nguyen@hotels.com', 'pasxh65sword4', 'gestionnaire', 0, 25);
INSERT INTO employee VALUES (1000244, 'Kim', 'Soo', 234, 'Third St', 'Toronto', 'Ontario', 'Canada', 'A1A 1A1', 48000, '416-555-6789', 'soo.kim@hotel.com', 'passwox5rd5', 'réceptionniste', 0, 25);
INSERT INTO employee VALUES (1000245, 'Wong', 'David', 567, 'Fourth Ave', 'Vancouver', 'British Columbia', 'Canada', 'B2B 2B2', 65000, '604-555-2345', 'david.wong@hotel.com', 'pasx3fsword6', 'administrateur', 20, 25);
INSERT INTO employee VALUES (1000246, 'Lopez', 'Maria', 890, 'Fifth St', 'Montreal', 'Quebec', 'Canada', 'C3C 3C3', 47000, '514-555-6789', 'maria.lopez@hotel.com', 'paxh65hssword7', 'cuisiner', 5, 25);
INSERT INTO employee VALUES (1000247, 'Tran', 'Minh', 112, 'Sixth Ave', 'Calgary', 'Alberta', 'Canada', 'D4D 4D4', 58000, '403-555-1234', 'minh.tran@hotel.com', 'passwoxj6rd8', 'nettoyeur', 0, 25);
INSERT INTO employee VALUES (1000248, 'Chen', 'Shan', 345, 'Seventh St', 'Toronto', 'Ontario', 'Canada', 'A1A 1A1', 50000, '416-555-5678', 'shan.chen@hotel.com', 'passkjujword9', 'réceptionniste', 0, 25);
INSERT INTO employee VALUES (1000249, 'Yoon', 'Jae', 678,'Eight Ave', 'Vancouver', 'British Columbia', 'Canada', 'B2B 2B2', 60000, '604-555-9012', 'jae.yoon@hotel.com', 'pwwwassword10', 'administrateur', 15, 25);

-- hotel_id = 26
INSERT INTO employee VALUES (1000250, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M 1M1', 50000, '555-1234', 'john.smith@hotel.com', 'passukikuword1', 'réceptionniste', 0.0, 26);
INSERT INTO employee VALUES (1000251, 'Johnson', 'Sarah', 456, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M2M 2M2', 60000, '555-5678', 'sarah.johnson@hotels.com', 'passworevrd2', 'gestionnaire', 0.0, 26);
INSERT INTO employee VALUES (1000252, 'Garcia', 'Carlos', 789, 'King St', 'Toronto', 'Ontario', 'Canada', 'M3M 3M3', 45000, '555-9012', 'carlos.garcia@hotel.com', 'passvreword3', 'cuisiner', 0.0, 26);
INSERT INTO employee VALUES (1000253, 'Kim', 'Ji-hyun', 321, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M4M 4M4', 55000, '555-3456', 'ji-hyun.kim@hotel.com', 'pasversword4', 'nettoyeur', 0.0, 26);
INSERT INTO employee VALUES (1000254, 'Chen', 'Wei', 654, 'Bay St', 'Toronto', 'Ontario', 'Canada', 'M5M 5M5', 70000, '555-7890', 'wei.chen@hotel.com', 'passworuynd5', 'réceptionniste', 0.0, 26);
INSERT INTO employee VALUES (1000255, 'Martinez', 'Maria', 987, 'Bloor St', 'Toronto', 'Ontario', 'Canada', 'M6M 6M6', 65000, '555-2345', 'maria.martinez@hotel.com', 'passwervord6', 'administrateur', 0.0, 26);
INSERT INTO employee VALUES (1000256, 'Lee', 'Sang-hyun', 135, 'College St', 'Toronto', 'Ontario', 'Canada', 'M7M 7M7', 50000, '555-6789', 'sang-hyun.lee@hotel.com', 'passxeerfword7', 'cuisiner', 0.0, 26);
INSERT INTO employee VALUES (1000257, 'Wong', 'David', 864, 'Dundas St', 'Toronto', 'Ontario', 'Canada', 'M8M 8M8', 60000, '555-1234', 'david.wong@hotel.com', 'passxgrword8', 'nettoyeur', 0.0, 26);
INSERT INTO employee VALUES (1000258, 'Gonzalez', 'Ana', 975, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M9M 9M9', 55000, '555-5678', 'ana.gonzalez@hotel.com', 'pah5hssword9', 'réceptionniste', 0.0, 26);
INSERT INTO employee VALUES (1000259, 'Kim', 'Min-ji', 246, 'YongSt', 'Toronto', 'Ontario', 'Canada', 'M1N 1N1', 50000, '555-9012', 'min-ji.kim@hotel.com', 'pasiukuksword10', 'administrateur', 0.0, 26);

-- hotel_id = 27
INSERT INTO employee VALUES (1000260, 'Smith', 'John', 123, 'Main St', 'Toronto', 'ON', 'Canada', 'M1S 3J4', 45000, '416-555-1234', 'jsmith@hotel.com', 'passworcrfrd01', 'réceptionniste', 1.5, 27);
INSERT INTO employee VALUES (1000261, 'Johnson', 'Emily', 456, 'Queen St', 'Toronto', 'ON', 'Canada', 'M5V 2A2', 55000, '416-555-2345', 'ejohnson@hotel.com', 'passwcfrford02', 'administrateur', 2.0, 27);
INSERT INTO employee VALUES (1000262, 'Garcia', 'Maria', 789, 'Yonge St', 'Toronto', 'ON', 'Canada', 'M4W 1J7', 60000, '416-555-3456', 'mgarcia@hotel.com', 'passcfrword03', 'cuisiner', 1.0, 27);
INSERT INTO employee VALUES (1000263, 'Lee', 'David', 321, 'Bloor St', 'Toronto', 'ON', 'Canada', 'M6S 1N2', 40000, '416-555-4567', 'dlee@hotel.com', 'passwocrhythd04', 'nettoyeur', 1.5, 27);
INSERT INTO employee VALUES (1000264, 'Wang', 'Sophie', 654, 'College St', 'Toronto', 'ON', 'Canada', 'M5T 1P7', 48000, '416-555-5678', 'swang@hotel.com', 'passwohrthrd05', 'réceptionniste', 2.0, 27);
INSERT INTO employee VALUES (1000266, 'Kim', 'Hannah', 753, 'Yonge St', 'Toronto', 'ON', 'Canada', 'M4W 1J7', 58000, '416-555-7890', 'hkim@hotel.com', 'passwdzword07', 'cuisiner', 2.0, 27);
INSERT INTO employee VALUES (1000267, 'Patel', 'Amit', 159, 'Queen St', 'Toronto', 'ON', 'Canada', 'M5V 2A2', 45000, '416-555-8901', 'apatel@hotels.com', 'pazwfessword08', 'gestionnaire', 1.0, 27);
INSERT INTO employee VALUES (1000268, 'Chen', 'Karen', 357, 'Main St', 'Toronto', 'ON', 'Canada', 'M1S 3J4', 50000, '416-555-9012', 'kchen@hotel.com', 'passrthword09', 'réceptionniste', 1.5, 27);
INSERT INTO employee VALUES (1000269, 'Singh', 'Raj', 753, 'College St', 'Toronto', 'ON', 'Canada','M5T 1P7', 60000, '416-555-0123', 'rsingh@hotel.com', 'passhyhword10', 'administrateur', 2.0, 27);

-- hotel_id = 28
INSERT INTO employee VALUES (1000270, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M 1M1', 50000.00, '416-123-4567', 'john.smith@hotel.com', 'passwtrrbord123', 'réceptionniste', 0.00, 28);
INSERT INTO employee VALUES (1000271, 'Johnson', 'Sarah', 456, 'King St', 'Toronto', 'Ontario', 'Canada', 'M2M 2M2', 60000.00, '416-234-5678', 'sarah.johnson@hotel.com', 'passyntnword234', 'administrateur', 0.00, 28);
INSERT INTO employee VALUES (1000272, 'Garcia', 'Juan', 789, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M3M 3M3', 55000.00, '416-345-6789', 'juan.garcia@hotel.com', 'passwordwz345', 'cuisiner', 0.00, 28);
INSERT INTO employee VALUES (1000273, 'Martinez', 'Maria', 101, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M4M 4M4', 45000.00, '416-456-7890', 'maria.martinez@hotel.com', 'passfreword456', 'nettoyeur', 0.00, 28);
INSERT INTO employee VALUES (1000274, 'Lee', 'David', 202, 'Bay St', 'Toronto', 'Ontario', 'Canada', 'M5M 5M5', 52000.00, '416-567-8901', 'david.lee@hotel.com', 'passwoytjtjrd567', 'réceptionniste', 0.00, 28);
INSERT INTO employee VALUES (1000275, 'Kim', 'Jin', 303, 'University Ave', 'Toronto', 'Ontario', 'Canada', 'M6M 6M6', 48000.00, '416-678-9012', 'jin.kim@hotel.com', 'passwverveord678', 'administrateur', 0.00, 28);
INSERT INTO employee VALUES (1000276, 'Chen', 'Ling', 404, 'Spadina Ave', 'Toronto', 'Ontario', 'Canada', 'M7M 7M7', 53000.00, '416-789-0123', 'ling.chen@hotels.com', 'passecwword789', 'gestionnaire', 0.00, 28);
INSERT INTO employee VALUES (1000277, 'Singh', 'Amit', 505, 'Bloor St', 'Toronto', 'Ontario', 'Canada', 'M8M 8M8', 47000.00, '416-890-1234', 'amit.singh@hotel.com', 'passwyymyord890', 'nettoyeur', 0.00, 28);
INSERT INTO employee VALUES (1000278, 'Wang', 'Xiaoyun', 606, 'Dundas St', 'Toronto', 'Ontario', 'Canada', 'M9M 9M9', 51000.00, '416-901-2345', 'xiaoyun.wang@hotel.com', 'pascwecsword901', 'réceptionniste', 0.00, 28);
INSERT INTO employee VALUES (1000279, 'Gupta', 'Rajesh', 707, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M1N 1N1', 59000.00, '416-012-3456', 'rajesh.gupta@hotel.com', 'passwoyjttyrd012', 'administrateur', 0.00, 28);

-- hotel_id = 29
INSERT INTO employee VALUES (1000280, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M 1M1', 50000.00, '416-123-4567', 'john.smiyth@hotel.com', 'paseswgrgreo8rd123', 'réceptionniste', 0.00, 29);
INSERT INTO employee VALUES (1000281, 'Johnson', 'Sarah', 456, 'King St', 'Toronto', 'Ontario', 'Canada', 'M2M 2M2', 60000.00, '416-234-5678', 'sarah.johnsoyn@hotel.com', 'pa7ssveveword234', 'administrateur', 0.00, 29);
INSERT INTO employee VALUES (1000282, 'Garcia', 'Juan', 789, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M3M 3M3', 55000.00, '416-345-6789', 'juan.gyarcia@hotel.com', 'passwv9ord345', 'cuisiner', 0.00, 29);
INSERT INTO employee VALUES (1000283, 'Martinez', 'Maria', 101, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M4M 4M4', 45000.00, '416-456-7890', 'maryia.martinez@hotel.com', 'passuw8ord456', 'nettoyeur', 0.00, 29);
INSERT INTO employee VALUES (1000284, 'Lee', 'David', 202, 'Bay St', 'Toronto', 'Ontario', 'Canada', 'M5M 5M5', 52000.00, '416-567-8901', 'dabvid.lee@hotel.com', 'pasysw7ord567', 'réceptionniste', 0.00, 29);
INSERT INTO employee VALUES (1000285, 'Kim', 'Jin', 303, 'University Ave', 'Toronto', 'Ontario', 'Canada', 'M6M 6M6', 48000.00, '416-678-9012', 'jbin.kim@hotel.com', 'pas5rsword678', 'administrateur', 0.00, 29);
INSERT INTO employee VALUES (1000286, 'Chen', 'Ling', 404, 'Spadina Ave', 'Toronto', 'Ontario', 'Canada', 'M7M 7M7', 53000.00, '416-789-0123', 'libng.chen@hotels.com', 'pash5sword789', 'gestionnaire', 0.00, 29);
INSERT INTO employee VALUES (1000287, 'Singh', 'Amit', 505, 'Bloor St', 'Toronto', 'Ontario', 'Canada', 'M8M 8M8', 47000.00, '416-890-1234', 'amit.sibngh@hotel.com', 'passw5ord890', 'nettoyeur', 0.00, 29);
INSERT INTO employee VALUES (1000288, 'Wang', 'Xiaoyun', 606, 'Dundas St', 'Toronto', 'Ontario', 'Canada', 'M9M 9M9', 51000.00, '416-901-2345', 'xibaoyun.wang@hotel.com', 'password901', 'réceptionniste', 0.00, 29);
INSERT INTO employee VALUES (1000289, 'Gupta', 'Rajesh', 707, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M1N 1N1', 59000.00, '416-012-3456', 'rajesh.gupnta@hotel.com', 'passwonrd012', 'administrateur', 0.00, 29);

-- hotel_id = 30
INSERT INTO employee VALUES (1000290, 'Smith', 'John', 123, 'Main St', 'Toronto', 'ON', 'Canada', 'M1S 3J4', 45000, '416-555-1234', 'jsmizbth@hotel.com', 'pasyhsevword01', 'réceptionniste', 1.5, 30);
INSERT INTO employee VALUES (1000291, 'Johnson', 'Emily', 456, 'Queen St', 'Toronto', 'ON', 'Canada', 'M5V 2A2', 55000, '416-555-2345', 'ejobhnson@hotel.com', 'pasyhvervsword02', 'administrateur', 2.0, 30);
INSERT INTO employee VALUES (1000292, 'Garcia', 'Maria', 789, 'Yonge St', 'Toronto', 'ON', 'Canada', 'M4W 1J7', 60000, '416-555-3456', 'mganytrcia@hotel.com', 'phyasvevsword03', 'cuisiner', 1.0, 30);
INSERT INTO employee VALUES (1000293, 'Lee', 'David', 321, 'Bloor St', 'Toronto', 'ON', 'Canada', 'M6S 1N2', 40000, '416-555-4567', 'doolee@hotel.com', 'passevhhword04', 'nettoyeur', 1.5, 30);
INSERT INTO employee VALUES (1000294, 'Wang', 'Sophie', 654, 'College St', 'Toronto', 'ON', 'Canada', 'M5T 1P7', 48000, '416-555-5678', 'swhang@hotel.com', 'phyassvervword05', 'réceptionniste', 2.0, 30);
INSERT INTO employee VALUES (1000295, 'Gupta', 'Rajesh', 987, 'Dundas St', 'Toronto', 'ON', 'Canada', 'M6J 1X7', 52000, '416-555-6789', 'rgudpta@hotel.com', 'passyvehword06', 'administrateur', 1.5, 30);
INSERT INTO employee VALUES (1000296, 'Kim', 'Hannah', 753, 'Yonge St', 'Toronto', 'ON', 'Canada', 'M4W 1J7', 58000, '416-555-7890', 'hkuim@hotel.com', 'passhhwovevrd07', 'cuisiner', 2.0, 30);
INSERT INTO employee VALUES (1000297, 'Patel', 'Amit', 159, 'Queen St', 'Toronto', 'ON', 'Canada', 'M5V 2A2', 45000, '416-555-8901', 'apaktel@hotels.com', 'pyyyveassword08', 'gestionnaire', 1.0, 30);
INSERT INTO employee VALUES (1000298, 'Chen', 'Karen', 357, 'Main St', 'Toronto', 'ON', 'Canada', 'M1S 3J4', 50000, '416-555-9012', 'kchhen@hotel.com', 'pathsvevytsword09', 'réceptionniste', 1.5, 30);
INSERT INTO employee VALUES (1000299, 'Singh', 'Raj', 753, 'College St', 'Toronto', 'ON', 'Canada','M5T 1P7', 60000, '416-555-0123', 'rsinngh@hotel.com', 'pajkjtttssword10', 'administrateur', 2.0, 30);

-- hotel_id = 31
INSERT INTO employee VALUES (1000300, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M 1M1', 50000, '555-1234', 'johnny.smyth@hotel.com', 'pas25swobrtbrd1', 'réceptionniste', 0.0, 31);
INSERT INTO employee VALUES (1000301, 'Johnson', 'Sarah', 456, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M2M 2M2', 60000, '555-5678', 'sarhah.johnson@hotels.com', 'passw55ord2', 'gestionnaire', 0.0, 31);
INSERT INTO employee VALUES (1000302, 'Garcia', 'Carlos', 789, 'King St', 'Toronto', 'Ontario', 'Canada', 'M3M 3M3', 45000, '555-9012', 'carhlos.garcia@hotel.com', 'pa35ssword3', 'cuisiner', 0.0, 31);
INSERT INTO employee VALUES (1000303, 'Kim', 'Ji-hyun', 321, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M4M 4M4', 55000, '555-3456', 'cho-za-hyuna.kim@hotel.com', 'passwor54d4', 'nettoyeur', 0.0, 31);
INSERT INTO employee VALUES (1000304, 'Chen', 'Wei', 654, 'Bay St', 'Toronto', 'Ontario', 'Canada', 'M5M 5M5', 70000, '555-7890', 'wellli.chen@hotel.com', 'pass55word5', 'réceptionniste', 0.0, 31);
INSERT INTO employee VALUES (1000305, 'Martinez', 'Maria', 987, 'Bloor St', 'Toronto', 'Ontario', 'Canada', 'M6M 6M6', 65000, '555-2345', 'maria.mallrtinez@hotel.com', 'passw11ord6', 'administrateur', 0.0, 31);
INSERT INTO employee VALUES (1000306, 'Lee', 'Sang-hyun', 135, 'College St', 'Toronto', 'Ontario', 'Canada', 'M7M 7M7', 50000, '555-6789', 'sang-69hyun.lee@hotel.com', 'pas8jfsword7', 'cuisiner', 0.0, 31);
INSERT INTO employee VALUES (1000307, 'Wong', 'David', 864, 'Dundas St', 'Toronto', 'Ontario', 'Canada', 'M8M 8M8', 60000, '555-1234', 'david9.wong@hotel.com', 'passwfjord8', 'nettoyeur', 0.0, 31);
INSERT INTO employee VALUES (1000308, 'Gonzalez', 'Ana', 975, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M9M 9M9', 55000, '555-5678', 'ana.gopnzalez@hotel.com', 'yjpassword9', 'réceptionniste', 0.0, 31);
INSERT INTO employee VALUES (1000309, 'Kim', 'Min-ji', 246, 'YongSt', 'Toronto', 'Ontario', 'Canada', 'M1N 1N1', 50000, '555-9012', 'moin-ji.kim@hotel.com', 'passjyfword10', 'administrateur', 0.0, 31);

-- hotel_id = 32
INSERT INTO employee VALUES (1000310, 'Doe', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V2B4', 50000, '123-456-7890', 'johnmfdoe@hotel.com', 'pazndssword123', 'réceptionniste', 0, 32);
INSERT INTO employee VALUES (1000311, 'Smith', 'Jane', 456, 'First St', 'Montreal', 'Quebec', 'Canada', 'H3A1K3', 65000, '234-567-8901', 'janemusmith@hotel.com', 'pbtrassword456', 'administrateur', 0, 32);
INSERT INTO employee VALUES (1000312, 'Lee', 'David', 789, 'Second St', 'Vancouver', 'British Columbia', 'Canada', 'V6B1H6', 45000, '345-678-9012', 'dav3343idlee@hotel.com', 'pafzssword789', 'cuisiner', 0, 32);
INSERT INTO employee VALUES (1000313, 'Kim', 'Mia', 345, 'Third St', 'Toronto', 'Ontario', 'Canada', 'M4W1J5', 55000, '456-789-0123', 'mi44akim@hotels.com', 'passwordzvd12345', 'gestionnaire', 0, 32);
INSERT INTO employee VALUES (1000314, 'Park', 'Andrew', 678, 'Fourth St', 'Calgary', 'Alberta', 'Canada', 'T2P2V7', 75000, '567-890-1234', 'andzzzrewpark@hotel.com', 'passwoafvrd45678', 'administrateur', 0, 32);
INSERT INTO employee VALUES (1000315, 'Wong', 'Emily', 910, 'Fifth St', 'Ottawa', 'Ontario', 'Canada', 'K1P5H9', 60000, '678-901-2345', 'emilywonnng@hotel.com', 'passvvvword78901', 'réceptionniste', 0, 32);
INSERT INTO employee VALUES (1000316, 'Chen', 'Kevin', 234, 'Sixth St', 'Toronto', 'Ontario', 'Canada', 'M5J2T3', 50000, '789-012-3456', 'kevinbbchen@hotel.com', 'passrevword123456', 'cuisiner', 0, 32);
INSERT INTO employee VALUES (1000317, 'Nguyen', 'Linh', 567, 'Seventh St', 'Vancouver', 'British Columbia', 'Canada', 'V6C2R6', 55000, '890-123-4567', 'linhfffngevruyen@hotel.com', 'passwtwwword456789', 'nettoyeur', 0, 32);
INSERT INTO employee VALUES (1000318, 'Garcia', 'Jose', 890, 'Eighth St', 'Montreal', 'Quebec', 'Canada', 'H4B1T4', 65000, '901-234-5678', 'josfffegarcia@hotel.com', 'passwvord789012', 'administrateur', 0, 32);
INSERT INTO employee VALUES (1000319, 'Zhang', 'Hannah',1011, 'Ninth St', 'Toronto', 'Ontario', 'Canada', 'M6G3B2', 70000, '012-345-6789', 'hannahbbbzhang@hotel.com', 'password123ve4567', 'réceptionniste', 0, 32);

-- hotel_id = 33
INSERT INTO employee VALUES (1000320, 'Smith', 'John', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M 1M1', 50000.00, '416-123-4567', 'john.skkmith@hotel.com', 'passwojhmhrd12345678', 'réceptionniste', 0.0, 33);
INSERT INTO employee VALUES (1000321, 'Johnson', 'Michael', 5678, 'Oak Ave', 'Vancouver', 'British Columbia', 'Canada', 'V1V 1V1', 75000.00, '604-234-5678', 'michkjael.johnson@hotel.com', 'passworjhhmd12345679', 'administrateur', 0.0, 33);
INSERT INTO employee VALUES (1000322, 'Garcia', 'Sofia', 9012, 'Elm St', 'Montreal', 'Quebec', 'Canada', 'H2H 2H2', 60000.00, '514-345-6789', 'sofia.garcjuia@hotel.com', 'passwojhmrd12345670', 'cuisiner', 0.0, 33);
INSERT INTO employee VALUES (1000323, 'Brown', 'Emma', 3456, 'Maple Rd', 'Calgary', 'Alberta', 'Canada', 'T1T 1T1', 45000.00, '403-456-7890', 'emma.buyjrown@hotel.com', 'passwvmord12345671', 'nettoyeur', 0.0, 33);
INSERT INTO employee VALUES (1000324, 'Wilson', 'David', 7890, 'Birch Ln', 'Ottawa', 'Ontario', 'Canada', 'K1K 1K1', 65000.00, '613-567-8901', 'david.wijullson@hotel.com', 'passjword1mv2345672', 'réceptionniste', 0.0, 33);
INSERT INTO employee VALUES (1000325, 'Lee', 'Michelle', 2345, 'Cedar St', 'Halifax', 'Nova Scotia', 'Canada', 'B2B 2B2', 55000.00, '902-678-9012', 'michelle.l.lmee@hotel.com', 'passworjvmd12345673', 'administrateur', 0.0, 33);
INSERT INTO employee VALUES (1000326, 'Martinez', 'Carlos', 6789, 'Pine Ave', 'Winnipeg', 'Manitoba', 'Canada', 'R3R 3R3', 70000.00, '204-789-0123', 'carlos.mal/prtinez@hotel.com', 'password123,k45674', 'cuisiner', 0.0, 33);
INSERT INTO employee VALUES (1000327, 'Taylor', 'Emily', 1234, 'Main St', 'Regina', 'Saskatchewan', 'Canada', 'S4S 4S4', 50000.00, '306-901-2345', 'emily.tannylor@hotel.com', 'password1k,k2345675', 'nettoyeur', 0.0, 33);
INSERT INTO employee VALUES (1000328, 'Anderson', 'James', 5678, 'Oak Ave', 'Victoria', 'British Columbia', 'Canada', 'V8V 8V8', 75000.00, '778-123-4567', 'james.andyyyyerson@hotel.com', 'passwok,rd12345676', 'réceptionniste', 0.0, 33);
INSERT INTO employee VALUES (1000329, 'Nguyen', 'Sophie', 9012, 'Elm St', 'Quebec City', 'Quebec', 'Canada', 'G1G 1G1', 60000.00, '418-234-5678', 'sophie.nguyyukuen@hotels.com', 'password123,k,45677', 'gestionnaire', 0.0, 33);

-- hotel_id = 34
INSERT INTO employee VALUES (1000330, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M1M1', 50000.00, '555-1234', 'john.slihmith@hotel.com', 'passworukyd123456', 'réceptionniste', 0.00, 34);
INSERT INTO employee VALUES (1000331, 'Johnson', 'Sarah', 456, 'First Ave', 'Vancouver', 'British Columbia', 'Canada', 'V6B3L1', 60000.00, '555-5678', 'sarah.joloihnson@hotel.com', 'passkuykword123457', 'administrateur', 5.00, 34);
INSERT INTO employee VALUES (1000332, 'Kim', 'David', 789, 'Second St', 'Montreal', 'Quebec', 'Canada', 'H3C1H1', 40000.00, '555-9012', 'david.kloiim@hotels.com', 'passwkuykord123458', 'gestionnaire', 2.50, 34);
INSERT INTO employee VALUES (1000333, 'Lee', 'Jessica', 1011, 'Third Ave', 'Calgary', 'Alberta', 'Canada', 'T2P2T7', 55000.00, '555-3456', 'jesoisica.lee@hotel.com', 'password1uyky23459', 'nettoyeur', 1.50, 34);
INSERT INTO employee VALUES (1000334, 'Brown', 'Michael', 1213, 'Fourth St', 'Edmonton', 'Alberta', 'Canada', 'T5J2B6', 45000.00, '555-7890', 'michkilael.brown@hotel.com', 'password12kyk3460', 'réceptionniste', 0.00, 34);
INSERT INTO employee VALUES (1000335, 'Davis', 'Emily', 1415, 'Fifth Ave', 'Ottawa', 'Ontario', 'Canada', 'K1N6N5', 65000.00, '555-2345', 'emily.dkkavis@hotel.com', 'password123kyku461', 'administrateur', 4.00, 34);
INSERT INTO employee VALUES (1000336, 'Wilson', 'Daniel', 1617, 'Sixth St', 'Halifax', 'Nova Scotia', 'Canada', 'B3H3A7', 42000.00, '555-6789', 'dankiiel.wilson@hotel.com', 'password123ukyu462', 'cuisiner', 3.00, 34);
INSERT INTO employee VALUES (1000337, 'Anderson', 'Olivia', 1819, 'Seventh Ave', 'Victoria', 'British Columbia', 'Canada', 'V8W2C2', 58000.00, '555-1234', 'olikivia.anderson@hotel.com', 'password123kyu463', 'nettoyeur', 1.00, 34);
INSERT INTO employee VALUES (1000338, 'Taylor', 'William', 2021, 'Eighth St', 'Winnipeg', 'Manitoba', 'Canada', 'R3C0V8', 51000.00, '555-5678', 'william.taikiylor@hotel.com', 'password12yuk3464', 'réceptionniste', 0.50, 34);
INSERT INTO employee VALUES (1000339, 'Martin', 'Emma', 2223, 'Ninth Ave', 'Regina', 'Saskatchewan', 'Canada', 'S4P0V5', 48000.00, '555-9012', 'emma.martkkiin@hotel.com', 'passwordhk12hj3465', 'administrateur', 6.00, 34);

-- hotel_id = 35
INSERT INTO employee VALUES (1000340, 'Smith', 'John', 1234, 'Main St', 'Toronto', 'ON', 'Canada', 'M1M1M1', 50000, '416-123-4567', 'john.sytymith@hotel.com', 'passpoko.iword01', 'réceptionniste', 2.5, 35);
INSERT INTO employee VALUES (1000341, 'Garcia', 'Maria', 5678, '2nd Ave', 'Vancouver', 'BC', 'Canada', 'V1V1V1', 60000, '604-234-5678', 'marnnnia.garcia@hotel.com', 'passw.oi.ord02', 'administrateur', 3.0, 35);
INSERT INTO employee VALUES (1000342, 'Kim', 'David', 4321, '3rd St', 'Calgary', 'AB', 'Canada', 'T1T1T1', 45000, '403-345-6789', 'david.kntyim@hotel.com', 'pass.oiword03', 'cuisiner', 2.0, 35);
INSERT INTO employee VALUES (1000343, 'Chen', 'Sophia', 8765, '4th Ave', 'Montreal', 'QC', 'Canada', 'H1H1H1', 55000, '514-456-7890', 'sophnytia.chen@hotels.com', 'passwbgbord04', 'gestionnaire', 1.5, 35);
INSERT INTO employee VALUES (1000344, 'Lee', 'Emily', 2468, '5th St', 'Ottawa', 'ON', 'Canada', 'K1K1K1', 48000, '613-567-8901', 'emily.lnnnee@hotel.com', 'pasbtrbrsword05', 'réceptionniste', 2.0, 35);
INSERT INTO employee VALUES (1000345, 'Gupta', 'Rahul', 1357, '6th Ave', 'Edmonton', 'AB', 'Canada', 'T5T5T5', 65000, '780-678-9012', 'rahul.guntnpta@hotel.com', 'passwobytrd06', 'administrateur', 3.5, 35);
INSERT INTO employee VALUES (1000346, 'Wang', 'Sophie', 9753, '7th St', 'Victoria', 'BC', 'Canada', 'V2V2V2', 42000, '250-789-0123', 'sopytyjvthie.wang@hotel.com', 'passwnrnord07', 'cuisiner', 1.5, 35);
INSERT INTO employee VALUES (1000347, 'Nguyen', 'Tuan', 8642, '8th Ave', 'Halifax', 'NS', 'Canada', 'B3B3B3', 52000, '902-890-1234', 'tuntnmjmytan.nguyen@hotel.com', 'pasnnytnsword08', 'nettoyeur', 2.0, 35);
INSERT INTO employee VALUES (1000348, 'Park', 'Min', 2468, '9th St', 'Winnipeg', 'MB', 'Canada', 'R3R3R3', 48000, '204-901-2345', 'min.pnytafnytrk@hotel.com', 'passwnhtxord09', 'réceptionniste', 1.5, 35);
INSERT INTO employee VALUES (1000349, 'Liu', 'Kevin', 1357, '10th Ave', 'Quebec City', 'QC', 'Canada', 'G1G1G1', 60000, '418-012-3456', 'kevintn.lmyumiu@hotel.com', 'passnytntword10', 'administrateur', 3.0, 35);

-- hotel_id = 36
INSERT INTO employee VALUES (1000350, 'Smith', 'John', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'A1B2C3', 50000, '123-456-7890', 'john.smyumyith@hotel.com', 'passwnytennord1', 'réceptionniste', 0, 36);
INSERT INTO employee VALUES (1000351, 'Johnson', 'Emily', 5678, 'Park Ave', 'Montreal', 'Quebec', 'Canada', 'D4E5F6', 55000, '234-567-8901', 'emily.jommmhnson@hotels.com', 'pascnsword2', 'gestionnaire', 2.5, 36);
INSERT INTO employee VALUES (1000352, 'Chen', 'Amy', 2468, 'Broadway', 'Vancouver', 'British Columbia', 'Canada', 'G7H8I9', 60000, '345-678-9012', 'ammmmy.chen@hotel.com', 'pahmcmsword3', 'cuisiner', 1, 36);
INSERT INTO employee VALUES (1000353, 'Garcia', 'Carlos', 1357, 'Main St', 'Toronto', 'Ontario', 'Canada', 'J1K2L3', 45000, '456-789-0123', 'carlos.gamyurcia@hotel.com', 'pascsstsword4', 'nettoyeur', 0.5, 36);
INSERT INTO employee VALUES (1000354, 'Wilson', 'Sarah', 8765, 'King St', 'Ottawa', 'Ontario', 'Canada', 'M4N5O6', 52000, '567-890-1234', 'sarah.wimylson@hotel.com', 'passwohhhrd5', 'réceptionniste', 1.5, 36);
INSERT INTO employee VALUES (1000355, 'Zhang', 'Michael', 4321, 'Granville St', 'Vancouver', 'British Columbia', 'Canada', 'P7Q8R9', 58000, '678-901-2345', 'michaymumel.zhang@hotel.com', 'pasmjhhsword6', 'administrateur', 3, 36);
INSERT INTO employee VALUES (1000356, 'Lee', 'Jenny', 7531, 'Main St', 'Toronto', 'Ontario', 'Canada', 'S1T2U3', 65000, '789-012-3456', 'jenny.lmyee@hotel.com', 'passwmjhmord7', 'cuisiner', 2, 36);
INSERT INTO employee VALUES (1000357, 'Gomez', 'Miguel', 9876, 'King St', 'Ottawa', 'Ontario', 'Canada', 'V4W5X6', 42000, '890-123-4567', 'miguel.gojymez@hotel.com', 'passwmjhord8', 'nettoyeur', 1, 36);
INSERT INTO employee VALUES (1000358, 'Chen', 'Tina', 1111, 'Broadway', 'Vancouver', 'British Columbia', 'Canada', 'Y7Z8A9', 55000, '901-234-5678', 'tmmmina.chen@hotel.com', 'passwmjhord9', 'réceptionniste', 1, 36);
INSERT INTO employee VALUES (1000359, 'Liu', 'Kevin', 3698, 'Granville St', 'Vancouver', 'British Columbia', 'Canada', 'B1C2D3', 62000, '012-345-6789', 'kemmvin.liu@hotel.com', 'passmjhword10', 'administrateur', 2, 36);

-- hotel_id = 37
INSERT INTO employee VALUES (1000360, 'Doe', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'A1B 2C3', 50000.00, '123-456-7890', 'john.dommmme@hotel.com', 'passwmjhmmord123', 'réceptionniste', 0.0, 37);
INSERT INTO employee VALUES (1000361, 'Smith', 'Jane', 456, 'Elm St', 'Vancouver', 'British Columbia', 'Canada', 'V1X 2Y3', 55000.00, '234-567-8901', 'janemmm.smith@hotel.com', 'pasjhmsword456', 'administrateur', 0.0, 37);
INSERT INTO employee VALUES (1000362, 'Kim', 'David', 789, 'Oak St', 'Montreal', 'Quebec', 'Canada', 'H2X 3Y7', 60000.00, '345-678-9012', 'david.kimym@hotels.com', 'passwjhmord789', 'gestionnaire', 0.0, 37);
INSERT INTO employee VALUES (1000363, 'Chen', 'Amy', 234, 'Maple St', 'Calgary', 'Alberta', 'Canada', 'T2R 0B1', 45000.00, '456-789-0123', 'amy.cmmhen@hotel.com', 'pasyjmnswordabc', 'nettoyeur', 0.0, 37);
INSERT INTO employee VALUES (1000364, 'Gupta', 'Raj', 567, 'Cedar St', 'Ottawa', 'Ontario', 'Canada', 'K1P 5E9', 55000.00, '567-890-1234', 'raj.gupyuta@hotel.com', 'passuymyworddef', 'réceptionniste', 0.0, 37);
INSERT INTO employee VALUES (1000365, 'Wang', 'Linda', 890, 'Pine St', 'Halifax', 'Nova Scotia', 'Canada', 'B3H 4P7', 65000.00, '678-901-2345', 'liyumynda.wang@hotel.com', 'passwmuymyordghi', 'administrateur', 0.0, 37);
INSERT INTO employee VALUES (1000366, 'Singh', 'Amit', 345, 'Birch St', 'Victoria', 'British Columbia', 'Canada', 'V8W 2A2', 60000.00, '789-012-3456', 'amit.siyumngh@hotel.com', 'passmyumwordjkl', 'cuisiner', 0.0, 37);
INSERT INTO employee VALUES (1000367, 'Liu', 'Grace', 678, 'Spruce St', 'Winnipeg', 'Manitoba', 'Canada', 'R3B 2G6', 50000.00, '890-123-4567', 'gjmyrace.liu@hotel.com', 'passwrthordmno', 'nettoyeur', 0.0, 37);
INSERT INTO employee VALUES (1000368, 'Patel', 'Anjali', 901, 'Holly St', 'Regina', 'Saskatchewan', 'Canada', 'S4P 3C8', 55000.00, '901-234-5678', 'anyyyjali.patel@hotel.com', 'passhrthrwordpqr', 'réceptionniste', 0.0, 37);
INSERT INTO employee VALUES (1000369, 'Nguyen', 'Daniel', 234, 'Walnut St', 'Edmonton', 'Alberta', 'Canada', 'T5J 1N9', 60000.00, '012-345-6789', 'danjyiel.nguyen@hotel.com', 'passwrhrordstu', 'administrateur', 0.0, 37);

-- hotel_id = 38
INSERT INTO employee VALUES (1000370, 'Smith', 'John', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V2L4', 50000, '416-123-4567', 'john.sjymith@hotel.com', 'pahrtssword', 'réceptionniste', 2.5, 38);
INSERT INTO employee VALUES (1000371, 'Garcia', 'Maria', 5678, 'Elm St', 'Vancouver', 'British Columbia', 'Canada', 'V6B2T9', 55000, '604-234-5678', 'majymria.garcia@hotel.com', 'passhrthword', 'administrateur', 3.0, 38);
INSERT INTO employee VALUES (1000372, 'Kim', 'David', 4321, 'Oak St', 'Calgary', 'Alberta', 'Canada', 'T2P2V7', 60000, '403-345-6789', 'david.mjmkim@hotel.com', 'passwhrthord', 'cuisiner', 1.5, 38);
INSERT INTO employee VALUES (1000373, 'Chen', 'Amy', 9876, 'Maple St', 'Montreal', 'Quebec', 'Canada', 'H3A1M8', 55000, '514-456-7890', 'amy.chjyen@hotel.com', 'passbbword', 'nettoyeur', 2.0, 38);
INSERT INTO employee VALUES (1000374, 'Gupta', 'Rajesh', 3456, 'Cedar St', 'Halifax', 'Nova Scotia', 'Canada', 'B3H2P6', 70000, '902-567-8901', 'rajesmmmh.gupta@hotel.com', 'passbeword', 'réceptionniste', 1.0, 38);
INSERT INTO employee VALUES (1000375, 'Nguyen', 'Thi', 8765, 'Birch St', 'Ottawa', 'Ontario', 'Canada', 'K1N6N5', 45000, '613-678-9012', 'thi.mjm@hotel.com', 'passwbytjord', 'administrateur', 4.5, 38);
INSERT INTO employee VALUES (1000376, 'Lee', 'Andrew', 2468, 'Pine St', 'Winnipeg', 'Manitoba', 'Canada', 'R3M0C5', 65000, '204-789-0123', 'andmjmmjmjrew.lee@hotels.com', 'passbgegword', 'gestionnaire', 2.0, 38);
INSERT INTO employee VALUES (1000377, 'Singh', 'Jaspreet', 1357, 'Spruce St', 'Regina', 'Saskatchewan', 'Canada', 'S4P3Y2', 50000, '306-890-1234', 'jasmjmmpreet.singh@hotel.com', 'payjfhssword', 'nettoyeur', 1.5, 38);
INSERT INTO employee VALUES (1000378, 'Wang', 'Emily', 3691, 'Cypress St', 'Edmonton', 'Alberta', 'Canada', 'T6G2P8', 55000, '780-901-2345', 'emily.wamjmjng@hotel.com', 'pagthssword', 'réceptionniste', 2.5, 38);
INSERT INTO employee VALUES (1000379, 'Gonzalez', 'Luis', 8023, 'Walnut St', 'Victoria', 'British Columbia', 'Canada', 'V8W1W4', 60000, '250-345-6789', 'luis.gonzmjmjmalez@hotel.com', 'passwhrtheord', 'administrateur', 3.5, 38);

-- hotel_id = 39
INSERT INTO employee VALUES (1000380, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M 1M1', 50000.00, '555-555-1212', 'jsmith@hotel.com', 'passmjhmword123456', 'réceptionniste', 0.0, 39);
INSERT INTO employee VALUES (1000381, 'Johnson', 'Sarah', 456, 'High St', 'Vancouver', 'British Columbia', 'Canada', 'V2V 2V2', 60000.00, '555-555-1213', 'sjohnson@hotel.com', 'pasjhmsword123457', 'administrateur', 0.0, 39);
INSERT INTO employee VALUES (1000382, 'Garcia', 'Juan', 789, 'Oak St', 'Montreal', 'Quebec', 'Canada', 'H3H 3H3', 55000.00, '555-555-1214', 'jgarcia@hotel.com', 'password12mjhm3458', 'cuisiner', 0.0, 39);
INSERT INTO employee VALUES (1000383, 'Brown', 'Emily', 321, 'Park Ave', 'Toronto', 'Ontario', 'Canada', 'M2M 2M2', 45000.00, '555-555-1215', 'ebrown@hotel.com', 'password12mm3459', 'nettoyeur', 0.0, 39);
INSERT INTO employee VALUES (1000384, 'Kim', 'David', 654, 'Maple St', 'Vancouver', 'British Columbia', 'Canada', 'V1V 1V1', 65000.00, '555-555-1216', 'dkim@hotel.com', 'passwordmhjhm123460', 'réceptionniste', 0.0, 39);
INSERT INTO employee VALUES (1000385, 'Lee', 'Samantha', 987, 'Elm St', 'Montreal', 'Quebec', 'Canada', 'H4H 4H4', 55000.00, '555-555-1217', 'slee@hotel.com', 'password12mjhm3461', 'administrateur', 0.0, 39);
INSERT INTO employee VALUES (1000386, 'Martinez', 'Maria', 741, 'Willow St', 'Toronto', 'Ontario', 'Canada', 'M3M 3M3', 50000.00, '555-555-1218', 'mmartinez@hotels.com', 'passwormjhmd123462', 'gestionnaire', 0.0, 39);
INSERT INTO employee VALUES (1000387, 'Wang', 'Kevin', 369, 'Cedar St', 'Vancouver', 'British Columbia', 'Canada', 'V3V 3V3', 60000.00, '555-555-1219', 'kwang@hotel.com', 'passwordmhjm123463', 'nettoyeur', 0.0, 39);
INSERT INTO employee VALUES (1000388, 'Lopez', 'Carlos', 258, 'Pine St', 'Montreal', 'Quebec', 'Canada', 'H5H 5H5', 55000.00, '555-555-1220', 'clopez@hotel.com', 'passwor;p;d123464', 'réceptionniste', 0.0, 39);
INSERT INTO employee VALUES (1000389, 'Nguyen', 'Thi', 963, 'Birch St', 'Toronto', 'Ontario', 'Canada', 'M4M 4M4', 45000.00, '555-555-1221', 'tnguyen@hotel.com', 'password1poo;3465', 'administrateur', 0.0, 39);

-- hotel_id = 40
INSERT INTO employee VALUES (1000390, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M4C 1A4', 45000.00, '416-555-1234', 'john.sgbbmith@hotel.com', 'password727201', 'réceptionniste', 0.0, 40);
INSERT INTO employee VALUES (1000391, 'Garcia', 'Maria', 456, 'Broadway Ave', 'Vancouver', 'British Columbia', 'Canada', 'V5K 2J6', 50000.00, '604-555-5678', 'margbbia.garcia@hotel.com', 'pa2572ssword02', 'administrateur', 0.0, 40);
INSERT INTO employee VALUES (1000392, 'Nguyen', 'Thi', 789, '4th St', 'Montreal', 'Quebec', 'Canada', 'H3G 1M8', 60000.00, '514-555-9012', 'thi.nggsbuyen@hotel.com', 'pas22272sword03', 'cuisiner', 0.0, 40);
INSERT INTO employee VALUES (1000393, 'Lee', 'Jae', 1011, '5th Ave', 'Toronto', 'Ontario', 'Canada', 'M4S 1Z1', 55000.00, '416-555-3456', 'jagse.lee@hotels.com', 'pass5725word04', 'gestionnaire', 0.0, 40);
INSERT INTO employee VALUES (1000394, 'Wang', 'Ling', 1213, '6th St', 'Vancouver', 'British Columbia', 'Canada', 'V6S 0A3', 48000.00, '604-555-7890', 'linggg.wang@hotel.com', 'pa2272ssword05', 'réceptionniste', 0.0, 40);
INSERT INTO employee VALUES (1000395, 'Gomez', 'Antonio', 1415, '7th Ave', 'Montreal', 'Quebec', 'Canada', 'H3B 1Y8', 52000.00, '514-555-2345', 'anbgstonio.gomez@hotel.com', 'pass7527word06', 'administrateur', 0.0, 40);
INSERT INTO employee VALUES (1000396, 'Kim', 'Min', 1617, '8th St', 'Toronto', 'Ontario', 'Canada', 'M4P 1L7', 65000.00, '416-555-6789', 'min.bbkim@hotel.com', 'passwo27527rd07', 'cuisiner', 0.0, 40);
INSERT INTO employee VALUES (1000397, 'Chen', 'Xin', 1819, '9th Ave', 'Vancouver', 'British Columbia', 'Canada', 'V5T 1K1', 50000.00, '604-555-1234', 'xin.bbchen@hotel.com', 'password08', 'nettoyeur', 0.0, 40);
INSERT INTO employee VALUES (1000398, 'Singh', 'Raj', 2021, '10th St', 'Montreal', 'Quebec', 'Canada', 'H3E 1L6', 55000.00, '514-555-5678', 'raj.sbbbingh@hotel.com', 'pas272sword09', 'réceptionniste', 0.0, 40);
INSERT INTO employee VALUES (1000399, 'Choi', 'Hyun', 2223, '11th Ave', 'Toronto', 'Ontario', 'Canada', 'M4R 1N4', 60000.00, '416-555-9012', 'hyun.cbgghoi@hotel.com', 'passwo727rd10', 'administrateur', 0.0, 40);
-- Employee Insert Queries END



-- Reservation Insert Queries START
INSERT INTO reservation VALUES (1, '2023-05-01', '2023-05-07', 10000001, 101);
INSERT INTO reservation VALUES (2, '2023-05-15', '2023-05-21', 10000002, 201);
INSERT INTO reservation VALUES (3, '2023-06-01', '2023-06-05', 10000003, 301);
INSERT INTO reservation VALUES (4, '2023-06-10', '2023-06-14', 10000004, 401);
INSERT INTO reservation VALUES (5, '2023-07-01', '2023-07-07', 10000005, 501);
INSERT INTO reservation VALUES (6, '2023-07-15', '2023-07-21', 10000006, 106);
INSERT INTO reservation VALUES (7, '2023-08-01', '2023-08-05', 10000007, 206);
INSERT INTO reservation VALUES (8, '2023-08-10', '2023-08-14', 10000008, 306);
INSERT INTO reservation VALUES (9, '2023-09-01', '2023-09-07', 10000009, 506);
INSERT INTO reservation VALUES (10, '2023-09-15', '2023-09-21', 100000010, 207);

INSERT INTO reservation VALUES (11, '2023-10-01', '2023-10-07', 100000011, 111);
INSERT INTO reservation VALUES (12, '2023-10-15', '2023-10-21', 100000012, 211);
INSERT INTO reservation VALUES (13, '2023-11-01', '2023-11-05', 100000013, 311);
INSERT INTO reservation VALUES (14, '2023-11-10', '2023-11-14', 100000014, 411);
INSERT INTO reservation VALUES (15, '2023-12-01', '2023-12-07', 100000015, 511);
INSERT INTO reservation VALUES (16, '2023-12-15', '2023-12-21', 10000001, 116);
INSERT INTO reservation VALUES (17, '2024-01-01', '2024-01-05', 10000002, 216);
INSERT INTO reservation VALUES (18, '2024-01-10', '2024-01-14', 10000003, 316);
INSERT INTO reservation VALUES (19, '2024-02-01', '2024-02-07', 10000004, 416);
INSERT INTO reservation VALUES (20, '2024-02-15', '2024-02-21', 10000005, 516);

INSERT INTO reservation VALUES (21, '2024-03-01', '2024-03-07', 10000006, 121);
INSERT INTO reservation VALUES (22, '2024-03-15', '2024-03-21', 10000007, 122);
INSERT INTO reservation VALUES (23, '2024-04-01', '2024-04-05', 10000008, 222);
INSERT INTO reservation VALUES (24, '2024-04-10', '2024-04-14', 10000009, 322);
INSERT INTO reservation VALUES (25, '2024-05-01', '2024-05-07', 100000010, 422);
INSERT INTO reservation VALUES (26, '2024-05-15', '2024-05-21', 100000011, 522);
INSERT INTO reservation VALUES (27, '2024-06-01', '2024-06-05', 100000012, 127);
INSERT INTO reservation VALUES (28, '2024-06-10', '2024-06-14', 100000013, 128);
INSERT INTO reservation VALUES (29, '2024-07-01', '2024-07-07', 100000014, 129);
INSERT INTO reservation VALUES (30, '2024-07-15', '2024-07-21', 100000015, 130);
-- Reservation Insert Queries END

-- Location Insert Queries START

-- Location Insert Queries END






