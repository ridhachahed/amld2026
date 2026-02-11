USE <username>; -- change to your username

DROP TABLE IF EXISTS hotels;
CREATE TABLE hotels(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  price_tier VARCHAR(50) NOT NULL,
  checkin_date DATE NOT NULL,
  checkout_date DATE NOT NULL,
  booked TINYINT NOT NULL DEFAULT 0
);

INSERT INTO hotels(id, name, location, price_tier, checkin_date, checkout_date, booked)
VALUES
  (1, 'Hilton Basel', 'Basel', 'Luxury', '2026-03-22', '2026-03-24', 0),
  (2, 'Marriott Zurich', 'Zurich', 'Upscale', '2026-03-14', '2026-03-21', 0),
  (3, 'Hyatt Regency Basel', 'Basel', 'Upper Upscale', '2026-03-02', '2026-03-20', 0),
  (4, 'Radisson Blu Lucerne', 'Lucerne', 'Midscale', '2026-03-24', '2026-03-25', 0),
  (5, 'Best Western Bern', 'Bern', 'Upper Midscale', '2026-03-23', '2026-03-25', 0),
  (6, 'InterContinental Geneva', 'Geneva', 'Luxury', '2026-03-23', '2026-03-28', 0),
  (7, 'Sheraton Zurich', 'Zurich', 'Upper Upscale', '2026-03-27', '2026-04-02', 0),
  (8, 'Holiday Inn Basel', 'Basel', 'Upper Midscale', '2026-03-24', '2026-04-09', 0),
  (9, 'Courtyard Zurich', 'Zurich', 'Upscale', '2026-03-03', '2026-03-13', 0),
  (10, 'Comfort Inn Bern', 'Bern', 'Midscale', '2026-03-04', '2026-03-16', 0);
