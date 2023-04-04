-- Query the Database --
SELECT
	ord.order_id,
    CONCAT(cus.first_name,' ',cus.last_name) AS 'customer_name',
    cus.city,
    cus.state,
    ord.order_date,
    SUM(item.quantity) AS 'total_units',
    SUM(item.quantity * item.list_price) AS 'revenue',
    pro.product_name,
    cat.category_name,
    sto.store_name,
    CONCAT(staf.first_name,' ',staf.last_name) AS 'sales_rep'
FROM sales.customers cus
    JOIN sales.orders ord
    ON ord.customer_id = cus.customer_id
    JOIN sales.order_items AS item
    ON ord.order_id = item.order_id
    JOIN production.products AS pro
    ON item.product_id = pro.product_id
    JOIN production.categories AS cat
    ON cat.category_id = pro.category_id 
    JOIN sales.stores AS sto
    ON ord.store_id = sto.store_id
    JOIN sales.staffs AS staf
    ON ord.staff_id = staf.staff_id
GROUP BY
   ord.order_id,
    CONCAT(cus.first_name,' ',cus.last_name),
    cus.city,
    cus.state,
    ord.order_date,
    pro.product_name,
    cat.category_name,
    sto.store_name,
    CONCAT(staf.first_name,' ',staf.last_name)

