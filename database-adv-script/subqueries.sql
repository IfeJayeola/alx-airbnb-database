SELECT description,location FROM Property
WHERE property_id IN (SELECT property_id FROM Review
GROUP BY property_id, rating
HAVING AVG(rating) > 4.0);


SELECT user_id, COUNT(*) AS num_bookings
FROM Booking
GROUP BY user_id
HAVING COUNT(*) > 3;
