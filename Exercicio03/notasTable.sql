CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunas(

    id BIGINT auto_increment,
    nome VARCHAR (255),
    turma INT,
    matricula INT,
	nota DECIMAL(2,2),
    
    PRIMARY KEY (id)

);