/* Write a query to find out what percentage of the total revenue (sum of all orders) is contributed by American Cuisine. Round the final value to 2 decimal places */
select 
Round(
    (sum(case when o.cuisine = "American" then o.price else 0 end))/ sum(o.price)*100.0,2
    ) as American_Revenue 
from orders o;