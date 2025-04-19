-- models/cancelledBookings.sql
{{ config(materialized='table') }}

SELECT 
    orderdate,sum(case when IsCancelled=1 then BookingValue end) as Cancelled_BookingValue
FROM 
    `silken-zenith-378617.booking.bookings`
WHERE IsCancelled=1
Group by orderdate