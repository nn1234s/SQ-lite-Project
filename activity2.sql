CREATE TABLE IF NOT EXISTS Salesman (
    Salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    Comission REAL 
);
INSERT INTO Salesman (Salesman_id, name, city, Comission) VALUES
('5001', 'Pikachu1', 'India', 0.15),    
('5002', 'Mewtwo1', 'India', 0.13),    
('5005', 'charmander', 'Usa', 0.11),    
('5006', 'Scorbunny', 'India', 0.14),    
('5007', 'Charizard', 'Kanto', 0.13),    
('5003', 'Morpeko', 'India', 0.12);

SELECT * FROM Salesman;
CREATE TABLE IF NOT EXISTS Orders (
    ord_no TEXT PRIMARY KEY,
    purch_amt REAL,
    ord_date TEXT,
    customer_id TEXT,
    Salesman_id TEXT
);

INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, Salesman_id) VALUES
('70001', 150.5, '2026-10-06', '3005', '5002'),
('70009', 270.65, '2026-10-06', '3001', '5001'),
('70002', 65.26, '2026-10-06', '3002', '5003'),
('70004', 110.5, '2026-10-06', '3009', '5007'),
('70007', 948.5, '2026-10-05', '3005', '5005'),
('70005', 2400.6, '2026-10-07', '3007', '5006');

SELECT * FROM Orders;
SELECT name, Comission
FROM Salesman;