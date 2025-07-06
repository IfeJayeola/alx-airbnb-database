
EXPLAIN
SELECT 
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    "User".first_name,
    "User".last_name,
    "User".email,
    Property.description,
    Property.location,
    Payment.payment_date,
    Payment.payment_method
FROM Booking
LEFT JOIN "User" ON Booking.user_id = "User".user_id
LEFT JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id
WHERE Booking.status = 'confirmed'
  AND Payment.status = 'completed';