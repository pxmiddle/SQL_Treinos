CREATE DATABASE db_escola_henry;

USE db_escola_henry;

CREATE TABLE tb_alunos(
idAluno bigint AUTO_INCREMENT,
nomeAluno varchar(255),
pcd char,
serieAluno int,
idadeAluno int,
notaAluno decimal(3,1),
PRIMARY KEY(idAluno));

DROP TABLE tb_alunos;

INSERT INTO tb_alunos(nomeAluno, pcd, serieAluno, idadeAluno, notaAluno)
VALUES("Joana", 'S', 7, 11, 7.7),
("Marcos", 'S', 9, 14, 10),
("Fabio", 'N', 6, 12, 9.7),
("Junior", 'N', 5, 11, 6.7),
("Braia", 'N', 1, 7, 5.4),
("Felipe", 'N', 2, 8, 8.1),
("Tomas", 'N', 4, 10, 4.4),
("Vitor", 'N', 3, 9, 3.7);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE notaAluno > 7.0;
SELECT * FROM tb_alunos WHERE notaAluno < 7.0;

UPDATE tb_alunos SET idadeAluno = 12 WHERE idAluno = 1;