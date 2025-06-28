User 

| user_id | first_name | last_name | email | password_hash | phone_number | role | created_at |
|---------|------------|------------|-------|---------------|-------------|-----|------------|
|  | | | | | | | |
|  | | | | | | | |


Properties 

| property_id | host_id | name | description | location | price per night | created_at | updated_at |
|------|------|----|-----|-----|-----|-----|------|
|  | |  |  |  |  |  |
|  | |  |  |  |  |  |

Bookings

| booking_ID | property_ID | user_id | start_date | end_date | totalprice | status | created_at |
|------------|-------------|---------|------------|----------|-------------|--------|-------------|



Payment

| payment_id | booking_ID | amount | payment date | payment method | 
|------------|------------|--------|---------------|---------------|


Review

| review_id | property_id | user_id | rating | comment | created_at | 
|-----------|-------------|--------|--------|---------|------------|


Message

| message_ID | sender_id |recipient ID | message body | sent_at | 
|------------|-----------|-------------|--------------|---------|
