1. Write a query to select all data from the `Customers` table.
select * from Customers;
-- 2. Write a query to select the total number of products from the `Products` table.
select count (*) as total_number from Products;
-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name, price
from products
where price > 100;

-- 4. Write a query to find the average price of all products from the `Products` table.
select avg(price) as average_price from products;

-- 5. Write a query to find the total sales amount from the `Sales` table.
select sum (total_amount) as total sales amount from sales table;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select distinct membership status from customer table;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select concat(first_name, ' ', last_name,) as full_name;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select * from products where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select max(price) as highest price from product ;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
select s.product_id, 
count(s.quantity_sold) as number_of_sales
from sales s 
group by s.product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
select product_id, sum(quantity) as total quantity sold;

-- 12. Write a query to find the lowest price of products in the `Products` table.
select min(price) as highest price from product ;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select distinct customers first_name, c.last_name
from customers 
join sales on customer_id = customer_id 
join products p on product_id = product_id
where price > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and select the product name and total sales amount.
select p.name,s.total_amount
from sales s
join products p on s.product.id = p.product.id;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select c.customer_id, c.first_name, c.last_name 
from customers c
join sales s
on c. customer_id = p.product_id
group by c.customer_id, c.first_name;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
select c.customer_id, c.first_name, sum(s.total_amount) as total_spent
from Customers c
join sales s
on c.customer_id = s.customer_id
group by c.customer_id, c.first_name;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
select c1.first_name, c2.first_name
c1.membership_status
from customers c1
join customer c2
on c1.member_ship = c2.memberahip_status
and c1.customer_id <> s.product_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select p.product_name,
count(s.sales_id) as total_sales
from sales s
inner join products p
on s.product_id = p.product_id
group by p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select * from products
where quantity = <10;
-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with sales greater than 5.
select p.product_id, s.quantity_sold
from sales s
join products p
on s.product_id = p.product_id
where s.quantity_sold > 5
-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select distinct c.first_name, c.lastname
from customers c
join sales s 
on c.customers_id = s.sales_id 
join products p 
on s.product_id =p.product_id
where p.category in ('Electronics' or 'Appliances';
-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
select p.product_name, sum(total_amount) as total sales as.total_amount 
from sales s 
group by product_name;
-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
select c.customer_id, c.first_name, s.sale_id, s.sale_date, s.sales_s.total_amount 
from customers c 
inner join sales s
on c.customer_id = s.customer_id
where year(s.sales_date ) = 2023;

-- 24. Write a query to find the customers with the highest total sales in 2023.
select c.customer_id,c.first_name, sum(s.total_amount) as total sales 
from customers c  
join sales s
on c.customer.id = s.customer_id
where year(s.sales_id) = 2023
group by c.customer id = c.customer_name
order by desc

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
Select p.product_id, p.product_name, p.price
From Products p
Join Sales s
on p.product_id = s.product_id
ORDER BY p.price asc
-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select count(*) as total_customer
from 
-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
select count(s.sale_id) as total_sales
from sales s
join customers c on s.customer_id = c.customer_id
join Products on s.product_id = p.product_id
where c.membership_tier = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
select p.product_name, p.product_id, i.stock_quantity
from products p
join inventory i 
on p.product_id = i.product_id 
where i.stock_quantity < 10

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
select customer_id,
    sum(quantity) as total_quantity_bought
from  Sales
group by customer_id
having sum (quantity) > 5;

-- 30. Write a query to find the average quantity sold per product.
select avg (quantity) as average quantity sold
from sales 
group by product_id;

-- 31. Write a query to find the number of sales made in the month of December 2023.
select count as total_sales
from Sales
where year (sale_date) = 2023
and month(sale_date) = 12;

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
select c.customer_id,c.customer_name,
    sum(s.total_amount ) as total_spent
from Customers c
join Sales s
on c.customer_id = s.customer_id
where year(s.sale_date) = 2023
group by c.customer_id, c.customer_name
order by total_spent desc;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select p.product_id,p.product_name, i.stock_quantity
from Products p
join Sales s on p.product_id = s.product_id
join Inventory i on p.product_id = i.product_id
where i.stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
select 
    p.product_id,
    p.product_name,
    SUM(s.total_amount) AS total_sales
from Products p
join Sales s on p.product_id = s.product_id
group byp.product_id, p.product_name
order by total_sales desc;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select distinct c.customer_id, c.first_name,
c.last_name
from customer c
join c.customer_id = s.customer_id
where s.sale-date between c.registration_date
and c.registration_date + interval '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
select s.sale_id,s.customer_id, s.product_id,s.sale_date, s.quantity, s.sales_amount, p.product_name, p.price,
from Sales s
join products p2  p on s.product_id = p.product_id
where p.price between 100 and 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
select 
    customer_id,
    Count(*) as purchase_count
from Sales s
group bycustomer_id
order by purchase_count DESC
limit 1;
-- 38. Write a query to find the total quantity of products sold per customer.
select  customer_id,
    sum(quantity) as total_quantity_of products
from Sales
group by customer_id;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
select p.product_id, p.product_name, i.stock_quantity,'high stock' as stock_type
from
    Inventory i
join Products p on i.product_id = p.product_id
where
    stock_quantity = (select max(stock_quantity) from Inventory)
union
select p.product_id,p.product_name,i.stock_quantity,'Low Stock' as stock_type
from Inventory i
join Products p on i.product_id = p.product_id
where stock_quantity = (select min(stock_quantity) from Inventory);

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select p.product_id,p.product_name,
    sum(s.total_amount) as total_sales
from Products p
join Sales s on p.product_id = s.product_id
where  p.product_name like '%Phone%'
group by p.product_id, p.product_name
order by total_sales desc;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
select c.customer_id, c.customer_name,p.product_name, sum(s.total_amount) as total_sales
from Customers c
inner join Sales s on c.customer_id = s.customer_id
inner join Products p on s.product_id = p.product_id
where  c.membership_tier = 'Gold'
group by c.customer_id, c.customer_name, p.product_name
order by total_sales ;

-- 42. Write a query to find the total sales of products by category.
select p.category,
    sum(s.sales_amount) as total_sales
from Products p
join  Sales s on p.product_id = s.product_id
group by  p.category
order by  total_sales desc;


-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
select p.product_name,
extract(year from s.sale_date) as year,
extract(month from s.sale_date) as month,
sum(s.total_amount) as total_sales
from Sales s join Products p
on s.product_id = p.product_id
group by p.product_name, year, month
order by year,month;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
select s.product_id,i.stock_quantity, sum(s.quantity) as total_sold
from Sales s
join Inventory i on s.product_id = i.product_id
group by  s.product_id, i.stock_quantity
having i.stock_quantity > 0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
select c.customer_id,c.customer_name,
    sum(s.sales_amount) as total_purchases
from Customers c
join Sales s on c.customer_id = s.customer_id
group by c.customer_id, c.customer_name
order by total_purchases desc
limit 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
Select count(distinct product_id) as unique_products_sold
from Sales s
where year(sale_date) = 2023;

-- 47. Write a query to find the products that have not been sold in the last 6 months.
select p.product_name
from products p 
left join Sales s
on p.product_id = s.product_id
and s.sale_date >= current_date - interval '6 months'
where s.product_id is null;

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.

select p.product_id,p.product_name, sum(s.quantity) as total_quantity_sold
from Products p
join sales s on p.product_id = s.product_id
where p.price between 200 and 800
group by p.product_id, p.product_name
order by total_quantity_sold desc;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
select  c.customer_id,c.customer_name,
    sum (s.sales_amount) as total_spent
from customers c
join Sales s on c.customer_id = s.customer_id
where year(s.sale_date) = 2023
group by c.customer_id, c.customer_name
order by total_spent DESC
limit 1;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
select p.product_name, sum(s. quantity) as total_sales
from products p
join sales s
on p.product_id = s.product_id
where p.price > 200
group by p.product_name
having sum(s.quantity) > 100;
