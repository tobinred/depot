-- get the number of cases being delivered on order 6
SELECT order_number,supplier_name,num,SUM(number_cases) FROM DepotArrivals
INNER JOIN Pallets 
ON DepotArrivals.order_number = Pallets.order_num
WHERE order_number = 6
GROUP BY order_number;
