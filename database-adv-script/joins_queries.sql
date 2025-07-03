SELECT Booking.booking_id, "User".first_name, "User".last_name
FROM Booking
INNER JOIN "User"
ON Booking.user_id = "User".user_id;


SELECT Property.description, Property.location, Review.rating, Review.comment
FROM Property
LEFT JOIN Review
ON Property.property_id = Review.property_id
ORDER BY location

SELECT first_name, last_name, start_date, end_date, total_price, status booking_status
FROM "User"
FULL OUTER JOIN Booking
ON "User".user_id = Booking.user_id;
