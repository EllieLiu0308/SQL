# Write your MySQL query statement below
(select u.name as results
from movierating r
left join users u
on r.user_id = u.user_id
group by r.user_id 
order by count(r.movie_id) desc , u.name asc
limit 1)

union

(select m.title as results
from movierating r
left join movies m
on r.movie_id = m.movie_id
where r.created_at between '2020-02-01' and '2020-02-29'
group by r.movie_id
order by avg(r.rating) desc, m.title asc
limit 1);
