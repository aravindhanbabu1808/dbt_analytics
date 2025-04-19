-- models/cancelledBookings.sql
{{ config(materialized='table') }}

SELECT 
    orderdate,sum(BookingValue) as BookingValue
FROM 
    `silken-zenith-378617.booking.bookings`
WHERE IsCancelled=1
Group by orderdate