{{ config(materialized="table") }}
select
    orderdate,
    sum(case when iscancelled = 1 then bookingvalue end) as cancelled_bookingvalue
from `silken-zenith-378617.booking.bookings`
group by orderdate
;
