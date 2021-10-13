CREATE DATABASE Ticket_Call_Center;
USE Ticket_Call_Center;

CREATE TABLE Categories (
id  INT PRIMARY KEY AUTO_INCREMENT,
Categorie VARCHAR(100) NOT NULL
);

CREATE TABLE Users (
id INT PRIMARY KEY AUTO_INCREMENT,
UserName VARCHAR(100) NOT NULL,
Email VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE Notes (
id INT PRIMARY KEY AUTO_INCREMENT,
Title VARCHAR(100) NOT NULL,
Creation DATE NULL DEFAULT NULL,
Descriptions TEXT NOT NULL,
Modification DATE NULL DEFAULT NULL,
Delete_ TINYINT NOT NULL,
idUser INT NOT NULL,
FOREIGN KEY (idUser) REFERENCES Users(id)
);


CREATE Table note_categorie (
id INT PRIMARY KEY AUTO_INCREMENT,
idNote INT NOT NULL, FOREIGN KEY (idNote) REFERENCES Notes(id),
idCategorie INT NOT NULL, FOREIGN KEY (idCategorie) REFERENCES Categories(id)
);


INSERT INTO Categories (Categorie) VALUES ('Ausentismo'),('Uso de Auxiliares'),('Cross Selling'),('Efectividad de Retención'),('One and Done'),('NPS'),('AHT'),('Porcentaje de transferencia'),('Uso de Herramientas'),('Confirmación');

INSERT INTO Users (UserName, Email) 
VALUES
("Cory Noel", "cory_noel@CallCenter.com"),
("Sade Lees", "sade_lees@CallCenter.com"),
("Graham Costa", "graham_costa@CallCenter.com"),
("Teri Drummond", "teri_drummond@CallCenter.com"),
("Jillian Christian", "jillian_christian@CallCenter.com"),
("Malaika Morse", "malaika_morse@CallCenter.com"),
("Elana Golden", "elana_golden@CallCenter.com"),
("Ammaarah Moreno", "ammaarah_moreno@CallCenter.com"),
("Mylie Harrington", "mylie_harrington@CallCenter.com"),
("Eamonn Santana", "eamonn_santana@CallCenter.com");

INSERT INTO Notes (Title, Creation, Descriptions, Modification, Delete_, idUser) 
VALUES
("Liquidación Septiembre", "2021-09-06", "Me registraron mal el ausentismo, solo tuve 1 día, y el total de AHT me figura 450'' en sistema", NULL, 0, 6),
("Acumulado Septiembre", "2021-09-06", "Semana 1: Tranferencias 3, Herramientas de retención: 1- 50% Descuento 12M", NULL, 0, 8),
("Acumulado Octubre",  "2021-10-11", "Semana 1: NPS califico un 4*, Porcentaje de transferencias registraron 1 pero fueron 2", NULL, 0, 9),
("Revisión Septiembre",  "2021-09-06", "Semana 2: Computaron 2 ausentinos solo hubo 1", "2021-09-13", 0, 3),
("Acumulado Eamonn Santana Septiembre", "2021-09-06", "Semana 4: Confirmo cambios OK", "2021-10-01", 1, 10),
("Aditional Payroll", "2021-09-06", "Ventas por 19 en la 1er semana", NULL, 0, 2),
("Diferencias en Sistema y recibo", "2021-09-06", "La segunda semana de Septiembre superé 130 Resueltos", NULL, 0, 1),
("Adherencias Septiembre", "2021-09-06", "Me olvidé de cortar el sistema el 4 de septiembre, en 1 hora adicional que deben descontar", NUll, 0, 5),
("Aditional Payroll", "2021-09-06", "Buenas tardes, encuentro varios errores. 1- no hubo uso de auxiliares 2- Retuve en cnía 3 clientes 3- las dos retenciones que no figuran son del 50% por12M ambas. 4- En sitema figura 600 AHT", NULL, 0, 4),
("Liquidación Octumbre", "2021-10-11", "Total de AHT me figura 427'' en sistema", "2021-10-18", 0, 7);

INSERT INTO note_categorie (idNote, idCategorie) VALUES
(1,1),
(1,7),
(2,8),
(2,9),
(3,6),
(3,8),
(4,1),
(5,3),
(6,3),
(7,5),
(8,10),
(8,2),
(8,4),
(8,9),
(9,7),
(10,7);