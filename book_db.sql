CREATE TABLE book(book_id INTEGER "book"PRIMARY KEY AUTOINCREMENT,
            title VARCHAR(50),
            author VARCHAR(30),
            price DECIMAL(8,2),
            amount INT);
            

INSERT INTO book (title, author, price, amount) 
VALUES('Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3),
('Белая гвардия', 'Булгаков М.А.', 540.50, 5),
('Идиот', 'Достоевский Ф.М.', 460.00, 10),
('Братья Карамазовы','Достоевский Ф.М.',799.01,2)
("Стихотворения и поэмы", "Есенин С.А.",650.00, 15);

/*Вывести название, автора  и стоимость (цена умножить на количество) тех книг, стоимость которых больше 4000 рублей*/

SELECT title, author, price
FROM book
WHERE amount < 10;

/*
Вывести название, автора и цену тех книг, которые написал Булгаков, ценой больше 600 рублей
*/

SELECT title, author, price
FROM book
WHERE price > 600 AND author="Булгаков М.А.";

/*Вывести название, цену  тех книг, которые написал Булгаков или Есенин, ценой больше 600 рублей
*/

SELECT title, author, price
FROM book
WHERE author="Булгаков М.А." OR author="Есенин С.А." AND price > 600 ;


/*Вывести название, автора,  цену  и количество всех книг, цена которых меньше 500 или больше 600, а стоимость всех экземпляров этих книг больше или равна 5000.*/
/*

SELECT title, author, price, amount
FROM book
WHERE (price < 500 OR price > 600) AND price * amount >= 5000;

/*Выбрать названия и количества тех книг, количество которых от 5 до 14 включительно.
SELECT title, amount
FROM book
WHERE amount BETWEEN 5 AND 14;*/
/*WHERE amount >= 5 AND amount <=14;*/

/*Выбрать названия и цены книг, написанных Булгаковым или Достоевским.*/
SELECT title, price 
FROM book
WHERE author IN ('Булгаков М.А.', 'Достоевский Ф.М.');


/*Вывести название и авторов тех книг, цены которых принадлежат интервалу от 540.50 до 800 (включая границы),  а количество или 2, или 3, или 5, или 7 .*/

SELECT title, author, price, amount
FROM book
WHERE (price >= 540.50 and price <= 800.00) and (amount IN (2,3,5,7));


