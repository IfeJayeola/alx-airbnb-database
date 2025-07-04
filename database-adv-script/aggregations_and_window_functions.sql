SELECT "User".first_name, "User".first_name, COUNT(Booking.user_id)
FROM Booking
INNER JOIN "User" ON "User".user_id = Booking.user_id
GROUP BY first_name, "User", last_name;




SELECT "User".first_name, "User".last_name, COUNT(Booking.user_id) AS no_of_bookings,
ROW_NUMBER() OVER ( ORDER BY COUNT (Booking.user_id)DESC) as rank
FROM Booking
RIGHT JOIN "User" ON "User".user_id = Booking.user_id
GROUP BY first_name, "User", last_name;


SELECT "User".first_name, "User".last_name, COUNT(Booking.user_id) AS no_of_bookings,
RANK() OVER ( ORDER BY COUNT (Booking.user_id)DESC) as rank
FROM Booking
RIGHT JOIN "User" ON "User".user_id = Booking.user_id
GROUP BY first_name, "User", last_name;
