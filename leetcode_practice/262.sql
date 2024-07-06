WITH unbanned AS (
    SELECT users_id
    FROM users
    WHERE banned = 'No'
), request AS (
    SELECT t.id, t.client_id, t.driver_id, t.status, t.request_at
    FROM trips t
    JOIN unbanned u1
    ON t.client_id = u1.users_id
    JOIN unbanned u2 
    ON t.driver_id = u2.users_id
    WHERE t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
)


select r.request_at as 'Day', round(sum(case when r.status in('cancelled_by_driver', 'cancelled_by_client')then 1 else 0 end)/count(r.client_id),2) as 'Cancellation Rate'
from request r
group by r.request_at

 