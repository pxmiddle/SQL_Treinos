CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
nomeClasse varchar(255),
armaClasse varchar(255),
PRIMARY KEY(id));

INSERT INTO tb_classes(nomeClasse, armaClasse)
VALUES("Barbaro", "Machado"),
("Arqueiro", "Arco e Flecha"),
("Bardo", "tambor"),
("Ladino", "Adaga"),
("Mago", "Cajado"),
("Sacerdote", "Tomo"),
("Druida", "Porrete"),
("Necromante", "Foice");


SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nomePersonagem varchar(255),
raca varchar(255),
nivel bigint,
ataque bigint,
defesa bigint,
vida bigint,
classes_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id));

SELECT * FROM tb_personagens;
INSERT INTO tb_personagens(nomePersonagem, raca, nivel, ataque, defesa, vida, classes_id)
VALUES("Felipe", "Humano", 4, 400, 380, 500, 1),
("Braia", "Humano", 2, 200, 300, 400, 7),
("Esponja", "Esponja do mar", 20, 2000, 2400, 2500, 7),
("Gabriel", "Humano", 10, 4000, 3800, 5000, 1),
("Pablo", "Vampiro", 7, 700, 380, 500, 5),
("Vinicius", "Goblin", 11, 1100, 380, 500, 2),
("Luiza", "Elfo", 20, 2800, 1000, 1100, 6),
("Victória", "Humano", 18, 1800, 2200, 2300, 7);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE ataque BETWEEN 100 AND 2000;

SELECT * FROM tb_personagens WHERE nomePersonagem LIKE "%c%";

SELECT nomePersonagem, raca, nivel, tb_classes.nomeClasse FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id
WHERE nomeClasse = "Arqueiro";


