SELECT activity_date as day, COUNT(DISTINCT user_id) as active_users
FROM activity
WHERE activity_date BETWEEN '2019-06-27' AND '2019-07-27'
GROUP BY activity_date;
