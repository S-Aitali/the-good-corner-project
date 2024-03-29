DROP DATABASE IF EXISTS finalProjectSara;
CREATE DATABASE finalProjectSara;

USE finalProjectSara;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
userID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
fullName VARCHAR(255),
userName VARCHAR(255),
userPassword VARCHAR(255)
);

DROP TABLE IF EXISTS items;
CREATE TABLE items(
itemID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
itemName VARCHAR(255),
itemDescription VARCHAR(255),
itemPrice INT,
primaryImage MEDIUMBLOB,
imageTitle VARCHAR(255)
); 

DROP TABLE IF EXISTS orderItems;
CREATE TABLE orderItems(
orderItemID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
itemID INT,
itemPrice INT,
itemQuantity INT,
FOREIGN KEY (itemID) REFERENCES items(itemID) ON DELETE CASCADE
);


INSERT INTO users (fullName, userName, userPassword)
VALUES
("Sara", "Saitali", "password1" ),
("James", "JSmith", "password2"),
("Allen", "aGarcia", "password3");


INSERT INTO items(itemName, itemDescription, itemPrice, primaryImage, imageTitle)
VALUES
("Skirt", "Small Brown Belle Poque Women's Tweed Skirt stretchy business pencil skirt double breasted.", 20, LOAD_FILE('C:/xampp/htdocs/sara_aitali/finalProject/images/skirt.jpg'), 'women skirt'),
("Tablet", "HD tablet 8'', 32GB for portable entertainment", 100, LOAD_FILE('C:/xampp/htdocs/sara_aitali/finalProject/images/electronics.jpg'), 'tablet'),
("Watch", "Small size, Clavin Klein party medium silver Dial Bangle ladies watch", 70, LOAD_FILE('C:/xampp/htdocs/sara_aitali/finalProject/images/watch.jpg'), 'Calvin Klien watch');

SELECT * FROM users;
SELECT * FROM items;
