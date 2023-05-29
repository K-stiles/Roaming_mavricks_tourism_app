

-- Creating Entities:
-- -----------------------------
-- Customer:
-- INSERT INTO `tourism_db`.`customers` (`name`, `address`, `email`) VALUES ('kwame james', 'tema', 'kwame@gmail.com');
-- Tours:
-- INSERT INTO `tourism_db`.`tours` (`name`, `location`, `price`, `tour_guide_id`) VALUES ('another one', 'anywhere', '23', '1');
-- Booking:
-- INSERT INTO `tourism_db`.`bookings` (`customer_id`, `tour_id`) VALUES ('8', '5');



-- Updating Entities:
-- -----------------------------
-- Customer:
-- UPDATE `tourism_db`.`customers` SET `name` = 'james Kubi', `email` = 'jam@gmail.com' WHERE (`customer_id` = '5');
-- Tours:
-- UPDATE `tourism_db`.`tours` SET `location` = 'england' WHERE (`tour_id` = '5');
-- Booking:
-- UPDATE `tourism_db`.`bookings` SET `customer_id` = '5' WHERE (`customer_id` = '8') and (`tour_id` = '5');





-- Deleting Entities:
-- -----------------------------
-- Will add to deleting entities soon



-- Quering All
SELECT * FROM tourism_db.bookings ORDER BY bookings.customer_id DESC; -- move date here
SELECT * FROM tourism_db.tour_guides;
SELECT * FROM tourism_db.customers ORDER BY customers.customer_id DESC;
SELECT * FROM tourism_db.tours;


-- Query Joint customers,bookings and tours(All Data)
SELECT * FROM tourism_db.customers
JOIN tourism_db.bookings ON customers.customer_id = bookings.customer_id
JOIN tourism_db.tours ON bookings.tour_id = tours.tour_id ;


-- Query Joint customers,bookings and tours(Booking Table UI)
SELECT customers.name "Customer Name", customers.address "Address", customers.email "Email",tours.name "Tour Name",tours.location "Location Name",tours.price "Booking Price",tours.date "Booking Date" FROM tourism_db.customers
JOIN tourism_db.bookings ON customers.customer_id = bookings.customer_id
JOIN tourism_db.tours ON bookings.tour_id = tours.tour_id;


-- move date queries
ALTER TABLE `tourism_db`.`bookings` 
ADD COLUMN `date` DATETIME NULL DEFAULT NOW() AFTER `tour_id`;

ALTER TABLE `tourism_db`.`tours` 
DROP COLUMN `date`;

-- VIEWS
-- CREATE VIEW clientview AS SELECT name FROM customers;
-- SELECT * FROM clientview;

