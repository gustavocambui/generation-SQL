/*
Crie um banco de dados para um serviço de um Games Online. 
O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
O sistema trabalhará com as informações dos personagens do jogo. 
O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
**/

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT auto_increment,
    CLASSE VARCHAR (255),
    PRIMARY KEY(ID)
);

INSERT INTO tb_classes(classe) VALUES ("GUERREIRO");
INSERT INTO tb_classes(classe) VALUES ("MAGO");
INSERT INTO tb_classes(classe) VALUES ("LADRÃO");
INSERT INTO tb_classes(classe) VALUES ("CLÉRIGO");
INSERT INTO tb_classes(classe) VALUES ("BÁRBARO");
INSERT INTO tb_classes(classe) VALUES ("BARDO");
INSERT INTO tb_classes(classe) VALUES ("DRUIDA");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
    id BIGINT auto_increment,
    nome VARCHAR (250) NOT NULL,
    especie VARCHAR (250) NOT NULL,
    origem VARCHAR (250) NOT NULL,
    arma VARCHAR (250),
    ataque BIGINT,
    classe BIGINT,
    defesa BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, especie, origem, arma, ataque, classe) VALUES ("Vex Vessar", "Meio Elfo", "Byroden", "Arco e Flecha", 1500, 3);
INSERT INTO tb_personagens(nome, especie, origem, arma, ataque, classe) VALUES ("Vax Vessar", "Meio Elfo", "Byroden", "Espada", 1400, 3);
INSERT INTO tb_personagens(nome, especie, origem, ataque, classe) VALUES ("Pike Trickfoot", "Gnomo", "Westruun", 3500, 4);
INSERT INTO tb_personagens(nome, especie, origem, arma, ataque, classe) VALUES ("Percival de Rolo", "Humano", "Whitestone", "Pistola", 2000, 1);
INSERT INTO tb_personagens(nome, especie, origem, arma, ataque, classe) VALUES ("Keyleth", "Meio Elfo", "Zephrah", "Cajado", 4000, 7);

UPDATE tb_personagens SET defesa=1000 WHERE id=1;
UPDATE tb_personagens SET defesa=1000 WHERE id=2;
UPDATE tb_personagens SET defesa=900 WHERE id=3;
UPDATE tb_personagens SET defesa=5000 WHERE id=4;
UPDATE tb_personagens SET defesa=5000 WHERE id=5;

