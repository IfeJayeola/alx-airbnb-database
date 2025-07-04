SELECT start_date, end_date, total_price, status, description, location, payment_date, payment_method
FROM Booking
LEFT JOIN "User" ON Booking.user_id = "User".user_id
LEFT JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id;
