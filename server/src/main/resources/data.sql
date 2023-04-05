
-- HotelGroup Insert Queries START
INSERT INTO hotel_group VALUES (1, 'Hilton', 10, '123-456-7890', 'hilton@example.com', 5, '123 Main St', 'New York', 'NY', '10001', 'USA');
INSERT INTO hotel_group VALUES (2, 'Marriott', 15, '555-555-5555', 'marriott@example.com', 10, '456 Broadway', 'Chicago', 'IL', '60611', 'USA');
INSERT INTO hotel_group VALUES (3, 'InterContinental', 5, '999-999-9999', 'intercontinental@example.com', 3, '789 Main St', 'Los Angeles', 'CA', '90001', 'USA');
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

INSERT INTO hotel VALUES (17, 'InterContinental Los Angeles Century City at Beverly Hills', 2151, 'Avenue of the Stars', 'Los Angeles', 'CA', 'USA', '90067', '310-284-6500', 'losangeles@ihg.com', 4.4, 4, 280, 3);
INSERT INTO hotel VALUES (18, 'InterContinental Los Angeles Downtown', 900, 'Wilshire Boulevard', 'Los Angeles', 'CA', 'USA', '90017', '213-688-7777', 'losangelesdowntown@ihg.com', 4.3, 4, 320, 3);
INSERT INTO hotel VALUES (19, 'InterContinental Los Angeles Century City', 2151, 'Avenue of the Stars', 'Los Angeles', 'CA', 'USA', '90067', '310-284-6500', 'losangelescenturycity@ihg.com', 4.1, 3, 200, 3);
INSERT INTO hotel VALUES (20, 'InterContinental San Francisco', 888, 'Howard Street', 'San Francisco', 'CA', 'USA', '94103', '415-616-6500', 'sanfrancisco@ihg.com', 4.5, 5, 350, 3);
INSERT INTO hotel VALUES (21, 'InterContinental Mark Hopkins San Francisco', 999, 'California Street', 'San Francisco', 'CA', 'USA', '94108', '415-392-3434', 'markhopkins@ihg.com', 4.3, 4, 290, 3);
INSERT INTO hotel VALUES (22, 'InterContinental San Diego', 901, 'Bayfront Court', 'San Diego', 'CA', 'USA', '92101', '619-501-9400', 'sandiego@ihg.com', 4.4, 4, 320, 3);
INSERT INTO hotel VALUES (23, 'InterContinental San Francisco Bay', 401, 'Burlingame Avenue', 'Burlingame', 'CA', 'USA', '94010', '650-342-9200', 'sanfranciscobay@ihg.com', 4.2, 4, 250, 3);
INSERT INTO hotel VALUES (24, 'InterContinental The Clement Monterey', 750, 'Cannery Row', 'Monterey', 'CA', 'USA', '93940', '831-375-4500', 'monterey@ihg.com', 4.5, 5, 330, 3);

INSERT INTO hotel VALUES (25, 'Hyatt Regency Miami', 400, 'SE 2nd Avenue', 'Miami', 'FL', 'USA', '33131', '305-358-1234', 'miami.regency@hyatt.com', 4.3, 4, 260, 4);
INSERT INTO hotel VALUES (26, 'Hyatt Place Miami Airport-East', 3549, 'Le Jeune Road', 'Miami', 'FL', 'USA', '33142', '305-929-0955', 'miamiairporteast.place@hyatt.com', 4.1, 2, 120, 4);
INSERT INTO hotel VALUES (27, 'Hyatt Regency Toronto', 370, 'King Street West', 'Toronto', 'ON', 'Canada', 'M5V1J9', '416-343-1234', 'toronto.regency@hyatt.com', 4.4, 5, 280, 4);
INSERT INTO hotel VALUES (28, 'Hyatt Place Niagara Falls', 6605, 'Niagara Falls Boulevard', 'Niagara Falls', 'NY', 'USA', '14304', '716-297-2121', 'niagarafalls.place@hyatt.com', 4.2, 3, 180, 4);
INSERT INTO hotel VALUES (29, 'Hyatt Place Edmonton Downtown', 9576, 'Jasper Avenue', 'Edmonton', 'AB', 'Canada', 'T5H3V3', '780-429-3900', 'edmonton.place@hyatt.com', 4.1, 3, 150, 4);
INSERT INTO hotel VALUES (30, 'Hyatt Place Montreal Downtown', 1255, 'Jeanne-Mance Street', 'Montreal', 'QC', 'Canada', 'H5B1E5', '514-419-6919', 'montreal.place@hyatt.com', 4.3, 3, 200, 4);
INSERT INTO hotel VALUES (31, 'Grand Hyatt New York', 109, 'East 42nd Street', 'New York', 'NY', 'USA', '10017', '212-883-1234', 'newyork.grand@hyatt.com', 4.2, 4, 350, 4);
INSERT INTO hotel VALUES (32, 'Hyatt Regency Vancouver', 655, 'Burrard Street', 'Vancouver', 'BC', 'Canada', 'V6C2R7', '604-683-1234', 'vancouver.regency@hyatt.com', 4.4, 4, 300, 4);

INSERT INTO hotel VALUES (33, 'Novotel Houston Downtown', 200, 'Main St', 'Houston', 'TX', 'USA', '77002', '713-123-4567', 'novotelhouston@example.com', 4.5, 4, 120, 5);
INSERT INTO hotel VALUES (34, 'Mercure Houston Galleria', 5000, 'Westheimer Rd', 'Houston', 'TX', 'USA', '77056', '713-234-5678', 'mercurehouston@example.com', 4.2, 3, 90, 5);
INSERT INTO hotel VALUES (35, 'Pullman Houston Medical Center', 6767, 'Bertner Ave', 'Houston', 'TX', 'USA', '77030', '713-345-6789', 'pullmanhouston@example.com', 4.8, 5, 180, 5);
INSERT INTO hotel VALUES (36, 'Sofitel Houston', 425, 'North Sam Houston Pkwy E', 'Houston', 'TX', 'USA', '77060', '281-123-4567', 'sofitelhouston@example.com', 4.6, 4, 150, 5);
INSERT INTO hotel VALUES (37, 'Novotel New York Times Square', 226, 'W 52nd St', 'New York', 'NY', 'USA', '10019', '212-234-5678', 'novotelnyc@example.com', 4.3, 3, 100, 5);
INSERT INTO hotel VALUES (38, 'Fairmont Royal York', 100, 'Front St W', 'Toronto', 'ON', 'Canada', 'M5J1E3', '+1 416-368-2511', 'fairmonttoronto@example.com', 4.7, 4, 180, 5);
INSERT INTO hotel VALUES (39, 'Sheraton Vancouver Wall Centre', 1088, 'Burrard St', 'Vancouver', 'BC', 'Canada', 'V6Z2R9', '+1 604-331-1000', 'sheratonvancouver@example.com', 4.5, 4, 150, 5);
INSERT INTO hotel VALUES (40, 'Novotel Ottawa', 33, 'Nicholas St', 'Ottawa', 'ON', 'Canada', 'K1N9M7', '+1 613-230-3033', 'novotelottawa@example.com', 4.2, 3, 100, 5);
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
INSERT INTO client VALUES (10000010, 'Nguyen', 'Linh', 27, 1213, 'Le Duan St', 'Ho Chi Minh City', 'Ho Chi Minh City', 'Vietnam', '70000', '+84 28 1234 5678', 'linh.nguyen@example.com', '2023-02-10', 'k9HsT6x#z');

INSERT INTO client VALUES (100000011, 'Smith', 'John', 28, 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V5T3', '555-555-5555', 'john.smith@email.com', '2020-01-01', 'password13');
INSERT INTO client VALUES (100000012, 'Johnson', 'Emily', 35, 456, 'Oak Ave', 'New York', 'New York', 'United States', '10001', '555-555-5555', 'emily.johnson@email.com', '2020-02-01', 'password456');
INSERT INTO client VALUES (100000013, 'Garcia', 'Luis', 22, 789, 'Calle Principal', 'Mexico City', 'Mexico City', 'Mexico', '05000', '555-555-5555', 'luis.garcia@email.com', '2020-03-01', 'password789');
INSERT INTO client VALUES (100000014, 'Dubois', 'Marie', 41, 12, 'Rue de la Paix', 'Paris', 'Île-de-France', 'France', '75001', '555-555-5555', 'marie.dubois@email.com', '2020-04-01', 'password123');
INSERT INTO client VALUES (100000015, 'Williams', 'Oliver', 26, 34, 'Queen St', 'Melbourne', 'Victoria', 'Australia', '3000', '555-555-5555', 'oliver.williams@email.com', '2020-05-01', 'password4576');
-- Client Insert Queries END


-- Employee Insert Queries START
-- hotel_id = 1
INSERT INTO employee VALUES (1000000, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1M1M1', 50000, '416-555-1234', 'john.smith@email.com', '54#pZd', 'gestionnaire', 0, 1);
INSERT INTO employee VALUES (1000001, 'Lee', 'David', 456, 'Oak St', 'Toronto', 'Ontario', 'Canada', 'M2M2M2', 45000, '416-555-5678', 'david.lee@email.com', 'G8$qW7', 'réceptionniste', 0, 1);
INSERT INTO employee VALUES (1000002, 'Chen', 'Amy', 789, 'Maple St', 'Toronto', 'Ontario', 'Canada', 'M3M3M3', 40000, '416-555-9012', 'amy.chen@email.com', 'hN43k!', 'administrateur', 0, 1);
INSERT INTO employee VALUES (1000003, 'Wong', 'Kevin', 234, 'Pine St', 'Toronto', 'Ontario', 'Canada', 'M4M4M4', 55000, '416-555-3456', 'kevin.wong@email.com', 'R944@b', 'cuisiner', 0, 1);
INSERT INTO employee VALUES (1000004, 'Garcia', 'Maria', 567, 'Cedar St', 'Toronto', 'Ontario', 'Canada', 'M5M5M5', 35000, '416-555-7890', 'maria.garcia@email.com', 'fL674j#K', 'nettoyeur', 0, 1);
INSERT INTO employee VALUES (1000005, 'Doe', 'John', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V 2L1', 50000, '416-555-1234', 'johndoe@email.com', 'P2c47Bv!x', 'réceptionniste', 0, 1);
INSERT INTO employee VALUES (1000006, 'Smith', 'Jane', 5678, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M5V 1H3', 60000, '416-555-5678', 'janesmith@email.com', 'J4tY479#m', 'administrateur', 0, 1);
INSERT INTO employee VALUES (1000007, 'Garcia', 'Carlos', 9012, 'King St', 'Toronto', 'Ontario', 'Canada', 'M5V 3P4', 45000, '416-555-9012', 'carlosgarcia@email.com', 'D6a37U@zF', 'cuisiner', 5, 1);
INSERT INTO employee VALUES (1000008, 'Lee', 'Jin', 3456, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M5V 4J6', 55000, '416-555-3456', 'jinlee@email.com', 'V7g47Xe!', 'nettoyeur', 0, 1);
INSERT INTO employee VALUES (1000009, 'Chen', 'Wei', 7890, 'Bay St', 'Toronto', 'Ontario', 'Canada', 'M5V 2W8', 50000, '416-555-7890', 'weichen@email.com', 'Q18sT#pL9', 'réceptionniste', 2, 1);

--hotel_id = 2
INSERT INTO employee VALUES (1000010, 'Doe', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M1N2P3', 50000.0, '555-1234', 'johndoe@example.com', 'p@ssword1', 'réceptionniste', 0.0, 2);
INSERT INTO employee VALUES (1000011, 'Smith', 'Jane', 456, 'First Ave', 'Vancouver', 'British Columbia', 'Canada', 'V5K3L4', 60000.0, '555-5678', 'janesmith@example.com', 'p@ssword2', 'gestionnaire', 0.0, 2);
INSERT INTO employee VALUES (1000012, 'Garcia', 'Maria', 789, 'Oak St', 'Calgary', 'Alberta', 'Canada', 'T2P2G8', 55000.0, '555-9012', 'mariagarcia@example.com', 'p@ssword3', 'nettoyeur', 0.0, 2);
INSERT INTO employee VALUES (1000013, 'Kim', 'David', 111, 'Elm St', 'Montreal', 'Quebec', 'Canada', 'H1A1R6', 65000.0, '555-3456', 'davidkim@example.com', 'p@ssword4', 'administrateur', 0.0, 2);
INSERT INTO employee VALUES (1000014, 'Chen', 'Michelle', 222, 'Park Ave', 'Halifax', 'Nova Scotia', 'Canada', 'B3H2Y5', 70000.0, '555-7890', 'michellechen@example.com', 'p@ssword5', 'cuisiner', 0.0, 2);
INSERT INTO employee VALUES (1000015, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'A1B2C3', 50000.0, '416-555-1234', 'john.smith@example.com', 'password1', 'réceptionniste', 0.0, 2);
INSERT INTO employee VALUES (1000016, 'Johnson', 'Mary', 456, 'Oak St', 'Montreal', 'Quebec', 'Canada', 'D4E5F6', 60000.0, '514-555-5678', 'mary.johnson@example.com', 'password2', 'administrateur', 0.0, 2);
INSERT INTO employee VALUES (1000017, 'Lee', 'David', 789, 'Maple St', 'Vancouver', 'British Columbia', 'Canada', 'G7H8I9', 70000.0, '604-555-9012', 'david.lee@example.com', 'password3', 'cuisiner', 0.0, 2);
INSERT INTO employee VALUES (1000018, 'Kim', 'Sarah', 246, 'Elm St', 'Calgary', 'Alberta', 'Canada', 'J1K2L3', 80000.0, '403-555-3456', 'sarah.kim@example.com', 'password4', 'nettoyeur', 0.0, 2);
INSERT INTO employee VALUES (1000019, 'Garcia', 'Juan', 369, 'Pine St', 'Halifax', 'Nova Scotia', 'Canada', 'M4N5O6', 90000.0, '902-555-7890', 'juan.garcia@example.com', 'password5', 'administrateur', 0.0, 2);

-- hotel_id = 3
INSERT INTO employee VALUES (1000020, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5V 2H1', 50000.0, '416-123-4567', 'john.smith@example.com', 'p@sSw0rD12', 'réceptionniste', 0.0, 3);
INSERT INTO employee VALUES (1000021, 'Johnson', 'Emily', 456, 'Broadway', 'Vancouver', 'British Columbia', 'Canada', 'V6G 2V5', 55000.0, '604-234-5678', 'emily.johnson@example.com', 't#EhG7fDx9', 'gestionnaire', 0.0, 3);
INSERT INTO employee VALUES (1000022, 'Garcia', 'Antonio', 789, 'Oak St', 'Montreal', 'Quebec', 'Canada', 'H3A 2R6', 60000.0, '514-345-6789', 'antonio.garcia@example.com', 'J8k#nH5xL2', 'cuisiner', 0.0, 3);
INSERT INTO employee VALUES (1000023, 'Smith', 'Emily', 101, 'Elm St', 'Toronto', 'Ontario', 'Canada', 'M4S 1R8', 55000.0, '416-456-7890', 'emily.smith@example.com', 'd#SfT6hR7k', 'nettoyeur', 0.0, 3);
INSERT INTO employee VALUES (1000024, 'Garcia', 'Maria', 321, 'Park Ave', 'Calgary', 'Alberta', 'Canada', 'T2P 3R5', 65000.0, '403-567-8901', 'maria.garcia@example.com', '5j#LdN8qP6', 'réceptionniste', 0.0, 3);
INSERT INTO employee VALUES (1000025, 'Johnson', 'Michael', 456, 'Main St', 'Vancouver', 'British Columbia', 'Canada', 'V6G 2V5', 70000.0, '604-678-9012', 'michael.johnson@example.com', 'u9#tEiK7zL', 'administrateur', 0.0, 3);
INSERT INTO employee VALUES (1000026, 'Lee', 'Min', 789, 'Broadway', 'Montreal', 'Quebec', 'Canada', 'H3A 2R6', 75000.0, '514-789-0123', 'min.lee@example.com', 'p4#AqS7kG9', 'cuisiner', 0.0, 3);
INSERT INTO employee VALUES (1000027, 'Brown', 'Olivia', 101, 'Oak St', 'Toronto', 'Ontario', 'Canada', 'M4S 1R8', 80000.0, '416-890-1234', 'olivia.brown@example.com', 'w7#LkR5uT2', 'nettoyeur', 0.0, 3);
INSERT INTO employee VALUES (1000028, 'Lee', 'William', 321, 'Park Ave', 'Calgary', 'Alberta', 'Canada', 'T2P 3R5', 85000.0, '403-901-2345', 'william.lee@example.com', 'x3#fRt6jP9', 'réceptionniste', 0.0, 3);
INSERT INTO employee VALUES (1000029, 'Brown', 'Jacob', 123, 'Elm St', 'Vancouver', 'British Columbia', 'Canada', 'V6G 2V5', 90000.0, '604-234-5678', 'jacob.brown@example.com', 'z9#sTb4gH6', 'administrateur', 0.0, 3);

-- hotel_id = 4
INSERT INTO employee VALUES (1000030, 'Smith', 'John', 123, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M4C 1A4', 45000.00, '416-555-1234', 'john.smith@example.com', 'password01', 'réceptionniste', 0.0, 4);
INSERT INTO employee VALUES (1000031, 'Garcia', 'Maria', 456, 'Broadway Ave', 'Vancouver', 'British Columbia', 'Canada', 'V5K 2J6', 50000.00, '604-555-5678', 'maria.garcia@example.com', 'password02', 'administrateur', 0.0, 4);
INSERT INTO employee VALUES (1000032, 'Nguyen', 'Thi', 789, '4th St', 'Montreal', 'Quebec', 'Canada', 'H3G 1M8', 60000.00, '514-555-9012', 'thi.nguyen@example.com', 'password03', 'cuisiner', 0.0, 4);
INSERT INTO employee VALUES (1000033, 'Lee', 'Jae', 1011, '5th Ave', 'Toronto', 'Ontario', 'Canada', 'M4S 1Z1', 55000.00, '416-555-3456', 'jae.lee@example.com', 'password04', 'gestionnaire', 0.0, 4);
INSERT INTO employee VALUES (1000034, 'Wang', 'Ling', 1213, '6th St', 'Vancouver', 'British Columbia', 'Canada', 'V6S 0A3', 48000.00, '604-555-7890', 'ling.wang@example.com', 'password05', 'réceptionniste', 0.0, 4);
INSERT INTO employee VALUES (1000035, 'Gomez', 'Antonio', 1415, '7th Ave', 'Montreal', 'Quebec', 'Canada', 'H3B 1Y8', 52000.00, '514-555-2345', 'antonio.gomez@example.com', 'password06', 'administrateur', 0.0, 4);
INSERT INTO employee VALUES (1000036, 'Kim', 'Min', 1617, '8th St', 'Toronto', 'Ontario', 'Canada', 'M4P 1L7', 65000.00, '416-555-6789', 'min.kim@example.com', 'password07', 'cuisiner', 0.0, 4);
INSERT INTO employee VALUES (1000037, 'Chen', 'Xin', 1819, '9th Ave', 'Vancouver', 'British Columbia', 'Canada', 'V5T 1K1', 50000.00, '604-555-1234', 'xin.chen@example.com', 'password08', 'nettoyeur', 0.0, 4);
INSERT INTO employee VALUES (1000038, 'Singh', 'Raj', 2021, '10th St', 'Montreal', 'Quebec', 'Canada', 'H3E 1L6', 55000.00, '514-555-5678', 'raj.singh@example.com', 'password09', 'réceptionniste', 0.0, 4);
INSERT INTO employee VALUES (1000039, 'Choi', 'Hyun', 2223, '11th Ave', 'Toronto', 'Ontario', 'Canada', 'M4R 1N4', 60000.00, '416-555-9012', 'hyun.choi@example.com', 'password10', 'administrateur', 0.0, 4);

-- hotel_id = 5
INSERT INTO employee VALUES (1000040, 'Johnson', 'Sarah', 1234, 'Main St', 'Toronto', 'Ontario', 'Canada', 'M5G 1N8', 50000.00, '416-555-1234', 'sarah.johnson@example.com', 'P@ssword123', 'réceptionniste', 2.5, 4);
INSERT INTO employee VALUES (1000041, 'Garcia', 'Juan', 5678, 'Broadway', 'Montreal', 'Quebec', 'Canada', 'H2X 1Y6', 60000.00, '514-555-5678', 'juan.garcia@example.com', 'P@ssword123', 'gestionnaire', 3.5, 4);
INSERT INTO employee VALUES (1000042, 'Kim', 'Jung', 9101, 'King St', 'Vancouver', 'British Columbia', 'Canada', 'V6B 2W3', 55000.00, '604-555-9101', 'jung.kim@example.com', 'P@ssword123', 'cuisiner', 1.5, 4);
INSERT INTO employee VALUES (1000043, 'Smith', 'Emma', 1212, 'Broadway', 'Toronto', 'Ontario', 'Canada', 'M4P 1E8', 65000.00, '416-555-1212', 'emma.smith@example.com', 'P@ssword123', 'nettoyeur', 2.0, 4);
INSERT INTO employee VALUES (1000044, 'Lee', 'Min', 1313, 'Queen St', 'Toronto', 'Ontario', 'Canada', 'M5C 2M6', 45000.00, '416-555-1313', 'min.lee@example.com', 'P@ssword123', 'réceptionniste', 3.0, 4);
INSERT INTO employee VALUES (1000045, 'Nguyen', 'Linh', 1414, 'Yonge St', 'Toronto', 'Ontario', 'Canada', 'M4T 1W5', 55000.00, '416-555-1414', 'linh.nguyen@example.com', 'P@ssword123', 'administrateur', 1.0, 4);
INSERT INTO employee VALUES (1000046, 'Chen', 'Hao', 1515, 'Robson St', 'Vancouver', 'British Columbia', 'Canada', 'V6Z 1X5', 48000.00, '604-555-1515', 'hao.chen@example.com', 'P@ssword123', 'cuisiner', 2.0, 4);
INSERT INTO employee VALUES (1000047, 'Brown', 'Olivia', 1616, 'King St', 'Toronto', 'Ontario', 'Canada', 'M5H 1A1', 70000.00, '416-555-1616', 'olivia.brown@example.com', 'P@ssword123', 'nettoyeur', 2.5, 4);
INSERT INTO employee VALUES (1000048, 'Wang', 'Tao', 1717, 'Robson St', 'Vancouver', 'British Columbia', 'Canada', 'V6Z1X5', 52000.00, '604-555-1717', 'tao.wang@example.com', 'P@ssword123', 'réceptionniste', 1.5, 4);
INSERT INTO employee VALUES (1000049, 'Gomez', 'Luis', 1818, 'Sainte-Catherine St', 'Montreal', 'Quebec', 'Canada', 'H3B 1B5', 58000.00, '514-555-1818', 'luis.gomez@example.com', 'P@ssword123', 'administrateur', 2.5, 4);
-- Employee Insert Queries END





