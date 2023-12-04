CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) 	NOT NULL,
quantidade int, 
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Tomate", 100, "2023-12-30", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Batata", 10, "2023-12-30", 6.00),
("Maça", 70, "2023-12-27", 3.00),
("Abacate", 100, "2023-12-22", 13.00),
("Uva", 80, "2023-12-17", 9.00),
("Banana", 90, "2023-12-31", 12.00);

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

UPDATE tb_produtos SET preco = 11.90 WHERE Id = 6;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM tb_produtos WHERE Id = 3;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Maça", 70, "2023-12-27", 3.00);

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(250);

SELECT nome_produto, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE quantidade < 40;

SELECT * FROM tb_produtos WHERE preco > 10.00 OR nome_produto = "Maça";

SELECT @@collation_database;

SELECT * FROM tb_produtos WHERE NOT Id = 1;

SELECT nome_produto, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos