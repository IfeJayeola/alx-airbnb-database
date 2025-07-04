CREATE INDEX idx_user
ON "User" (first_name, last_name);

CREATE INDEX idx_property
ON Property (description, location, pricepernight);

CREATE INDEX idx_booking
ON Booking (total_price, status)