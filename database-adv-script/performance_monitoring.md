# 📊 Performance Tuning Report: Booking Query Optimization

## ✅ Objective

Continuously monitor and refine database performance by analyzing query execution plans using `EXPLAIN ANALYZE`, identifying inefficiencies, suggesting improvements (e.g., indexes or schema adjustments), and implementing them to reduce query execution time.

---

## 🔍 Step 1: Original Query

```sql
SELECT 
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    "User".first_name,
    "User".last_name,
    "User".email,
    Property.description,
    Property.location
FROM Booking
LEFT JOIN "User" ON Booking.user_id = "User".user_id
LEFT JOIN Property ON Booking.property_id = Property.property_id
WHERE Booking.status = 'confirmed';
```

## Bottlenecks Identified

Sequential Scans on:
booking
"User"
property

These are inefficient when datasets grow larger, and suggest missing indexes.
