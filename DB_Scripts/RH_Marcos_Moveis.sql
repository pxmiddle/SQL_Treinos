CREATE DATABASE db_marcos_moveis;

USE db_marcos_moveis;

CREATE TABLE tb_rh(
idFunc bigint AUTO_INCREMENT,
nome varchar(255) 	NOT NULL,
cargo varchar(255) NOT NULL,
salario decimal(10,2) NOT NULL,
contratoInicio DATE,
PRIMARY KEY (idFunc));

INSERT INTO tb_rh (nome, cargo, salario, contratoInicio)
VALUES("Tomas", "Gerente", 7000.00, "2002-02-10"),
("Julia", "Desenvolvedor", 3000.00, "2010-10-30"),
("Marcos", "CEO", 15431.46, "1995-03-19"),
("Vitória", "Desenvolvedor", 4000.00, "2009-03-10"),
("Tobias", "Atendente", 2100.90, "2023-02-10"),
("Ana", "Segurança", 2466.70, "2023-02-10"),
("Cecilia", "Faxineiro", 1700.10, "2020-07-11");

SELECT * FROM tb_rh;

SELECT nome, cargo, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS sa FROM tb_rh WHERE salario > 2000.00;

SELECT nome, cargo, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS sa FROM tb_rh WHERE salario < 2000.00;

UPDATE tb_rh SET salario = 2300.70 WHERE idFunc = 7;
