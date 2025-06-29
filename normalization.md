# Database Normalization to 3NF

## 1. Initial Schema Review

I reviewed the following tables:
- `users`
- `properties`
- `bookings`
- `payments`
- `reviews`
- `messages`

Each table has a clear primary key and logically grouped attributes.

## 2. Normalization Steps

### First Normal Form (1NF)
- Ensured atomicity: all fields contain single values (e.g., no comma-separated lists).

### Second Normal Form (2NF)
- Verified that all non-primary-key attributes depend on the full primary key.

### Third Normal Form (3NF)
- Ensured there are no transitive dependencies.


## 3. Final Schema (3NF Compliant)

There is no redundant data. All tables:
- Have atomic columns
- Use only appropriate foreign keys for relationships
- Have no derived or dependent columns 