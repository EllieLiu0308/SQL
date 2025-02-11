select c.customer_id, c.customer_name
from customers c
join orders oa
on c.customer_id = oa.customer_id and product_name = 'A'
join orders ob
on c.customer_id = ob.customer_id and ob.product_name = 'B'
LEFT JOIN Orders oc
	ON c.customer_id = oc.customer_id 
	AND oc.product_name = 'C'
WHERE oc.order_id IS NULL