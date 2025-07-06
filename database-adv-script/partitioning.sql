CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price NUMERIC,
    status VARCHAR(50)
) PARTITION BY RANGE (start_date);
