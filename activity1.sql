CREATE TABLE supplier (
    SNO TEXT PRIMARY KEY,
    SNAME TEXT,
    STATUS INTEGER,
    CITY TEXT
);
INSERT INTO supplier (SNO, SNAME, STATUS, CITY) VALUES
('N1', 'Pikachu', 11, 'Pallet Town'),
('N2', 'Lucario', 10, 'Kanto'),
('N3', 'Charizard', 11, 'Kalos'),
('N4', 'Charmeleon', 8, 'Kanto'),
('N5', 'MewTwo', 19, 'Kalos');

SELECT * FROM supplier;

