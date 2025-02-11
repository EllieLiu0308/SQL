select name as customers
from customers 
where name
not in (
    select name as customers
from customers c
join orders o 
on c.id = o.customerId
)