# Performaqnce Report
- Initial Output
"Hash Right Join  (cost=3.44..27.47 rows=920 width=588) (actual time=46.158..46.341 rows=30 loops=1)"
"  Hash Cond: (payment.booking_id = booking.booking_id)"
"  ->  Seq Scan on payment  (cost=0.00..19.20 rows=920 width=28) (actual time=0.019..0.065 rows=30 loops=1)"
"  ->  Hash  (cost=3.06..3.06 rows=30 width=592) (actual time=46.108..46.122 rows=30 loops=1)"
"        Buckets: 1024  Batches: 1  Memory Usage: 12kB"
"        ->  Hash Left Join  (cost=1.68..3.06 rows=30 width=592) (actual time=45.890..46.051 rows=30 loops=1)"
"              Hash Cond: (booking.property_id = property.property_id)"
"              ->  Seq Scan on booking  (cost=0.00..1.30 rows=30 width=76) (actual time=0.044..0.092 rows=30 loops=1)"
"              ->  Hash  (cost=1.30..1.30 rows=30 width=564) (actual time=0.174..0.179 rows=30 loops=1)"
"                    Buckets: 1024  Batches: 1  Memory Usage: 11kB"
"                    ->  Seq Scan on property  (cost=0.00..1.30 rows=30 width=564) (actual time=0.059..0.109 rows=30 loops=1)"
"Planning Time: 170.582 ms"
"Execution Time: 46.497 ms"

- Action: I indexed
'''
 CREATE INDEX idx_booking_booking_id ON Booking(booking_id);
 CREATE INDEX idx_payment_booking_id ON Payment(booking_id);
 CREATE INDEX idx_booking_property_id ON Booking(property_id);
 CREATE INDEX idx_property_property_id ON Property(property_id);
'''

- Final Output
"Hash Left Join  (cost=3.35..4.83 rows=30 width=588) (actual time=0.995..1.681 rows=30 loops=1)"
"  Hash Cond: (booking.property_id = property.property_id)"
"  ->  Hash Right Join  (cost=1.68..3.06 rows=30 width=56) (actual time=0.491..0.967 rows=30 loops=1)"
"        Hash Cond: (payment.booking_id = booking.booking_id)"
"        ->  Seq Scan on payment  (cost=0.00..1.30 rows=30 width=28) (actual time=0.068..0.302 rows=30 loops=1)"
"        ->  Hash  (cost=1.30..1.30 rows=30 width=76) (actual time=0.384..0.394 rows=30 loops=1)"
"              Buckets: 1024  Batches: 1  Memory Usage: 11kB"
"              ->  Seq Scan on booking  (cost=0.00..1.30 rows=30 width=76) (actual time=0.075..0.202 rows=30 loops=1)"
"  ->  Hash  (cost=1.30..1.30 rows=30 width=564) (actual time=0.455..0.463 rows=30 loops=1)"
"        Buckets: 1024  Batches: 1  Memory Usage: 11kB"
"        ->  Seq Scan on property  (cost=0.00..1.30 rows=30 width=564) (actual time=0.229..0.344 rows=30 loops=1)"
"Planning Time: 17.929 ms"
"Execution Time: 1.959 ms"

> TheExecution time went from 46.497ms to 1.959ms which shows that the execution sped has increased