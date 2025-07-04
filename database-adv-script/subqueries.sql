SELECT description,location FROM Property
WHERE property_id IN (SELECT property_id FROM Review
GROUP BY property_id, rating
HAVING AVG(rating) > 4.0);


SELECT "User".first_name, "User".last_name, COUNT(Booking) AS num_bookings
FROM (Booking
INNER JOIN "User" ON "User".user_id = Booking.user_id)
GROUP BY first_name, last_name
HAVING COUNT(Booking.user_id) > 3;

