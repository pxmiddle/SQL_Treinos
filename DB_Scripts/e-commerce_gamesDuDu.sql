CREATE DATABASE db_gamesdudu;

USE db_gamesdudu;

CREATE TABLE tb_produtos(
idProd bigint AUTO_INCREMENT,
nomeProd varchar(255) 	NOT NULL,
marcaProd varchar(255) NOT NULL, 
quantidade BIGINT,
preco DECIMAL(6,2) NOT NULL,
tipoProd varchar(255) NOT NULL,
PRIMARY KEY(idProd));

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nomeProd, marcaProd, quantidade, preco, tipoProd)
VALUES("Xbox Series S", "Microsoft", 70, 2600.00, "Console"),
("PlayStation 5", "Sony", 100, 3100.00, "Console"),
("Nintendo Switch", "Nintendo", 30, 2200.00, "Console"),
("Televisão", "LG", 22, 1764.30, "Eletrodomestico"),
("Ar-Condicionado ", "LG", 10, 3132.33, "Eletrodomestico"),
("Echo Dot", "Amazon", 70, 386.10, "Eletronico"),
("Luminaria", "Samsung", 7, 500.00, "Eletrodomestico"),
("PC Gamer", "Positivo", 10, 2600.00, "Computador");

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 499.99, quantidade = 6 WHERE idProd = 7;