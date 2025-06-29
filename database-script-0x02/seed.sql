

-- To create a new users
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES (DEFAULT, 'Ade', 'Kogbe', 'fmynewmail@gmail.com', '$2b$12$eWliD5PBmyNnWp3OKjbe3O8.5Il1HZXYWWT6cMKnIRcGbFsnW0.Qq
', '0809797977', 'guest', DEFAULT)

-- To create new property
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES ( DEFAULT, '550e8400-e29b-41d4-a716-446655440000', 'Duplex', 'Semi-detached', 'Aule', 100.89, DEFAULT, DEFAULT
);

-- To create new Booking
INSERT INTO Booking(booking_id, property_id,  user_id, start_date, end_date, total_price, status, created_at)
VALUES
( DEFAULT, '123e4567-e89b-12d3-a456-426614174000', '987e6543-e21a-45b3-b789-124567890abc', '2025-07-01', '2025-07-05', 400.00, 'pending', DEFAULT),
( DEFAULT, '123e4567-e89b-12d3-a456-426614174000', '987e6543-e21a-45b3-b789-124567890abc', '2025-08-10', '2025-08-15', 550.00, 'confirmed', DEFAULT);


--To create for Pyament
INSERT INTO Payment ( payment_id, booking_id, amount, payment_date, payment_method)
VALUES (DEFAULT, '987e6543-e21a-45b3-b789-124567890abc', 4000, '2025-08-10', 'paypal');


-- Creating review
INSERT INTO Review ( review_id, property_id, user_id, rating, comment, created_at)
VALUES (DEFAULT, '987e6543-e21a-45b3-b789-124567890abc', '87e6543-e21a-45b3-b789-124567890abc', 3, 'This is the best', DEFAULT);

-- Adding a message
INSERT INTO Message ( message_id, sender_id, recipient_id, message_body, sent_at)
VALUES (DEFAULT, '7e6543-e21a-45b3-b789-124567890abc', '23e4567-e89b-12d3-a456-4266141740', 'i LIKE YOUR PRODUCT', DEFAULT);