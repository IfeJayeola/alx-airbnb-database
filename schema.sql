CREATE TABLE task(
        user_id UUID Primary Key,
        first_name varchar(255) NOT NULL,
        last_name varchar(255) NOT NULL,
        email varchar(255) UNIQUE NOT NULL,
        password_hash varchar(255) NOT NULL,
        phone_number varchar(255) NULL,
        role ENUM (guest, host, admin) NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
) 