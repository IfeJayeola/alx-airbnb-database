# ANALYSES ON INDEXING

## ANALYSES SCRIPT
EXPLAIN ANALYZE
SELECT * FROM Booking
JOIN "User" ON Booking.user_id = "User".user_id
JOIN Property ON Booking.property_id = Property.property_id;

## OUTPUT BEFORE INDEXING
'''
"Hash Join  (cost=2.45..3.62 rows=10 width=3820) (actual time=0.385..0.661 rows=30 loops=1)"
"  Hash Cond: (booking.property_id = property.property_id)"
"  ->  Hash Join  (cost=1.23..2.36 rows=10 width=2692) (actual time=0.216..0.380 rows=30 loops=1)"
"        Hash Cond: (booking.user_id = ""User"".user_id)"
"        ->  Seq Scan on booking  (cost=0.00..1.10 rows=10 width=84) (actual time=0.017..0.064 rows=30 loops=1)"
"        ->  Hash  (cost=1.10..1.10 rows=10 width=2608) (actual time=0.118..0.123 rows=30 loops=1)"
"              Buckets: 1024  Batches: 1  Memory Usage: 12kB"
"              ->  Seq Scan on ""User""  (cost=0.00..1.10 rows=10 width=2608) (actual time=0.017..0.064 rows=30 loops=1)"
"  ->  Hash  (cost=1.10..1.10 rows=10 width=1128) (actual time=0.151..0.156 rows=30 loops=1)"
"        Buckets: 1024  Batches: 1  Memory Usage: 13kB"
"        ->  Seq Scan on property  (cost=0.00..1.10 rows=10 width=1128) (actual time=0.035..0.082 rows=30 loops=1)"
"Planning Time: 0.402 ms"
"Execution Time: 0.791 ms"
'''


## OUTPUT AFTER INDEXING
'''
"Hash Join  (cost=3.35..4.83 rows=30 width=3820) (actual time=0.372..0.640 rows=30 loops=1)"
"  Hash Cond: (booking.property_id = property.property_id)"
"  ->  Hash Join  (cost=1.68..3.06 rows=30 width=2692) (actual time=0.213..0.371 rows=30 loops=1)"
"        Hash Cond: (booking.user_id = ""User"".user_id)"
"        ->  Seq Scan on booking  (cost=0.00..1.30 rows=30 width=84) (actual time=0.063..0.108 rows=30 loops=1)"
"        ->  Hash  (cost=1.30..1.30 rows=30 width=2608) (actual time=0.135..0.139 rows=30 loops=1)"
"              Buckets: 1024  Batches: 1  Memory Usage: 12kB"
"              ->  Seq Scan on ""User""  (cost=0.00..1.30 rows=30 width=2608) (actual time=0.016..0.062 rows=30 loops=1)"
"  ->  Hash  (cost=1.30..1.30 rows=30 width=1128) (actual time=0.144..0.149 rows=30 loops=1)"
"        Buckets: 1024  Batches: 1  Memory Usage: 13kB"
"        ->  Seq Scan on property  (cost=0.00..1.30 rows=30 width=1128) (actual time=0.044..0.089 rows=30 loops=1)"
"Planning Time: 32.008 ms"
"Execution Time: 0.752 ms"
'''

> The Planning time went from 0.402ms to 32.008ms but execution time went from 0.791ms to 0.752ms. Therefore the time to run the code went up this is because the table is small