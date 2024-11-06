
CREATE TABLE DepotArrivals (
    order_number INT PRIMARY KEY,
    supplier_name VARCHAR(50),
    depot_arrival_date DATE,
    estimated_arrival_time TIME,
    type_of_load ENUM('pallet', 'MU'),
    only_stop ENUM('yes', 'no'),
    num INT
);

INSERT INTO DepotArrivals (order_number, supplier_name, depot_arrival_date, estimated_arrival_time, type_of_load, only_stop,num) VALUES
(1, 'Cargoflex', '2024-10-02', '08:15:00', 'pallet', 'yes',25),
(2, 'Skylink Freight', '2024-10-03', '09:30:00', 'pallet', 'no',5),
(3, 'ParcelP', '2024-10-01', '10:45:00', 'pallet', 'yes',13),
(4, 'Kimmeys', '2024-10-03', '12:00:00', 'MU', 'yes',126),
(5, 'Polroad', '2024-10-02', '13:15:00', 'pallet', 'yes',20),
(6, 'Skylink Freight', '2024-10-01', '14:30:00', 'pallet', 'yes',3),
(7, 'Cargoflex', '2024-10-02', '15:45:00', 'pallet', 'yes',23),
(8, 'ParcelP', '2024-10-02', '16:00:00', 'pallet', 'no',7),
(9, 'Kimmeys', '2024-10-02', '17:15:00', 'pallet', 'yes',16),
(10, 'Polroad', '2024-10-03', '18:30:00', 'MU', 'yes',124),
(11, 'Cargoflex', '2024-10-01', '19:45:00', 'pallet', 'yes',20),
(12, 'Skylink Freight', '2024-10-02', '20:00:00', 'pallet', 'yes',21),
(13, 'ParcelP', '2024-10-03', '07:15:00', 'pallet', 'no',1),
(14, 'Kimmeys', '2024-10-02', '08:30:00', 'MU', 'yes',113),
(15, 'Polroad', '2024-10-01', '09:45:00', 'pallet', 'no',10),
(16, 'Cargoflex', '2024-10-01', '10:00:00', 'MU', 'yes',98),
(17, 'Skylink Freight', '2024-10-01', '11:15:00', 'pallet', 'yes',17),
(18, 'ParcelP', '2024-10-01', '12:30:00', 'MU', 'yes',50),
(19, 'Kimmeys', '2024-10-02', '13:45:00', 'pallet', 'yes',25),
(20, 'Polroad', '2024-10-03', '14:00:00', 'pallet', 'yes',18);

CREATE TABLE Pallets(
	order_num INT,
    pallet_number INT,
    number_products INT,
    number_cases INT,
    temp ENUM("ambient","chilled","frozen"),
    PRIMARY KEY (order_num,pallet_number)
);

INSERT INTO Pallets VALUES 
(6,1,1,50,"ambient"),
(6,2,2,25,"chilled"),
(6,3,1,60,"ambient"),
(2,4,20,100,"frozen"),
(2,5,1,20,"chilled"),
(1,6,8,40,"chilled"),
(3,7,3,50,"ambient");

