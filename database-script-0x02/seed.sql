


-- To create a new users
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES (DEFAULT, 'Ade', 'Kogbe', 'fhmynewmail@gmail.com', '$2b$12$eWliD5PBmyNnWp3OKjbe3O8.5Il1HZXYWWT6cMKnIRcGbFsnW0.Qq
', '0809797977', 'guest', DEFAULT) RETURNING user_id;


-- To create new property
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES ( DEFAULT, (SELECT user_id FROM "User"), 'Duplex', 'Semi-detached', 'Aule', 100.89, DEFAULT, DEFAULT
) RETURNING property_id;

INSERT INTO Booking(booking_id, property_id,  user_id, start_date, end_date, total_price, status, created_at)
VALUES
( DEFAULT,'8ad9ef49-e137-4ad7-ac6f-91376e9f831a', 'e2c4c4e7-4dd7-4914-b9ae-f8247e77cac4','2025-08-10', '2025-08-15', 550.00, 'confirmed', DEFAULT);

--To create for Pyament
INSERT INTO Payment ( payment_id, booking_id, amount, payment_date, payment_method)
VALUES (DEFAULT, '0b478b32-28fd-4dbc-bcc9-b13f8dd507f1', 4000, '2025-08-10', 'paypal');

-- Creating review
INSERT INTO Review ( review_id, property_id, user_id, rating, comment, created_at)
VALUES (DEFAULT, '8ad9ef49-e137-4ad7-ac6f-91376e9f831a', 'e2c4c4e7-4dd7-4914-b9ae-f8247e77cac4', 3, 'This is the best', DEFAULT);

-- Adding a message
INSERT INTO Message ( message_id, sender_id, recipient_id, message_body, sent_at)
VALUES (DEFAULT, 'e2c4c4e7-4dd7-4914-b9ae-f8247e77cac4', '1b33fe69-d96a-421a-b767-e72f5800e3e3', 'i LIKE YOUR PRODUCT', DEFAULT);


-----------------------------------------------------------------------------------------------------------------------------------

