CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255),
tamanho varchar(255),
PRIMARY KEY (id));

INSERT INTO tb_categorias(tipo, tamanho)
VALUES("Doce", "P"),
("Doce", "M"),
("Doce", "G"),
("Salgado", "P"),
("Salgado", "M"),
("Salgado", "G");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255),
preco decimal(5,2),
borda varchar(30),
fatias int,
categorias_id bigint,
PRIMARY KEY(id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id));


SELECT * FROM tb_pizzas;
DROP TABLE tb_pizzas;
INSERT INTO tb_pizzas(nome, preco, fatias, borda, categorias_id)
VALUES("Pizza Banana", 45.40, 8, "Sem borda", 2),
("Pizza Chocolate", 50.40, 6, "Catupiry", 3),
("Pizza Prestigio", 50.40, 4, "Catupiry", 2),
("Pizza Calabresa", 38.50, 8, "Sem borda", 4),
("Pizza 4 Queijos", 43.00, 6, "Chocolate", 6),
("Pizza Portuguesa", 50.00, 4, "Goiabada", 6),
("Pizza MM", 55.50, 4, "Goiabada", 3),
("Pizza Frango", 38.40, 4, "Sem borda", 5);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco < 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT nome, preco, tb_categorias.tipo, tb_categorias.tamanho FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";

