-- Customers and Orders: List the customer_name and order_date for all customers who have placed orders.

-- All Customers and Their Orders: List all customer names and their corresponding product_name from orders, if they have any. Include customers even if they haven't placed any orders.

-- Find Products and Their Orders: Display Product Name and the order_date from all the products that are ordered.

select c.customer_name, o.order_date from customers c
left join orders o on c.customer_id = o.customer_id
where o.order_date is not null;

select c.customer_name , o.product_name from customers c
left join orders o 
on c.customer_id = o.customer_id;

select p.product_name, o.order_date from products p
inner join orders o
on o.product_name = p.product_name;

