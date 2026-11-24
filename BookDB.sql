CREATE TABLE IF NOT EXISTS book (
    book_id INTEGER PRIMARY KEY,
    title   TEXT    NOT NULL,
    genre   TEXT    NOT NULL,
    rating  REAL    NOT NULL,
    pages   INTEGER NOT NULL,
    pub_year INTEGER NOT NULL
);
INSERT INTO book VALUES (1, 'Dragon Quest', 'Fantasy', 9.2, 312, 2026);    
INSERT INTO book VALUES (2, 'Code wizards', 'Sci-fi', 9.1, 313, 2025);    
INSERT INTO book VALUES (3, 'ocean deep', 'adventure', 9.0, 314, 2024);    
INSERT INTO book VALUES (4, 'star ranger', 'Sci-fi', 9.9, 315, 2023);
INSERT INTO book VALUES (5, 'forest secrets', 'Fantasy', 9.7, 316, 2022);    
INSERT INTO book VALUES (6, 'robot city', 'Sci-fi', 9.6, 317, 2021);    
INSERT INTO book VALUES (7, 'time jumper', 'adventure', 9.1, 318, 2020);  
INSERT INTO book VALUES (8, 'magic academic', 'Fantasy', 9.5, 319, 2019);    

SELECT * FROM book;

SELECT title, rating FROM book ORDER BY rating ASC;
SELECT title, rating FROM book ORDER BY rating DESC;
SELECT title, genre, rating FROM book ORDER BY genre ASC, rating DESC;

SELECT title, rating FROM book ORDER BY rating DESC LIMIT 3;
SELECT title, pub_year FROM book ORDER BY pub_year ASC LIMIT 5;

SELECT genre, COUNT(*) AS book_count FROM book GROUP BY genre;

SELECT genre, SUM(pages) AS total_pages, AVG(rating) AS avg_rating
FROM book
GROUP BY genre;
SELECT genre, COUNT(*) AS book_count
FROM book
GROUP BY genre
HAVING COUNT(*) > 2;

SELECT genre, AVG(rating) AS avg_rating
FROM book
GROUP BY genre 
HAVING AVG(rating) >= 8.5;









