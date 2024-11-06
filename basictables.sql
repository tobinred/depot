SELECT * FROM DepotArrivals;

-- select orders which have more than 20 pallets
SELECT * FROM DepotArrivals 
WHERE num > 20 AND type_of_load = "pallet";

-- sort by date arrival and then estimated arrival time 
SELECT * FROM DepotArrivals 
ORDER BY depot_arrival_date, estimated_arrival_time;

-- maximum number of pallets and MUs on an order
SELECT MAX(num) FROM DepotArrivals
WHERE type_of_load = "pallet";

SELECT MAX(num) FROM DepotArrivals
WHERE type_of_load = "MU";

-- calculate number of orders being recieved each day 
SELECT COUNT(order_number),depot_arrival_date
FROM DepotArrivals
GROUP BY depot_arrival_date
ORDER BY depot_arrival_date;

-- calculate number of pallets and MUs being recieved each day 
SELECT SUM(num),depot_arrival_date, type_of_load
FROM DepotArrivals
GROUP BY depot_arrival_date, type_of_load
ORDER BY depot_arrival_date;
