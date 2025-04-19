{{ config(materialized='table') }}
SELECT 
    OrderDate,
    SUM(CASE WHEN iscancelled = 1 THEN BookingValue END) AS Cancelled_BookingValue 
FROM 
    `silken-zenith-378617.booking.bookings`
GROUP BY 
    OrderDate;
