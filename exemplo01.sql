CREATE DATABASE db_rhgeneration;

USE db_rhgeneration;

CREATE TABLE tb_funcionarios(
	
    id BIGINT auto_increment,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    setor VARCHAR(255),
    matricula INT,
    primary key (id)
    
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, salario, setor, matricula)
VALUES("Maria", 9000.50, "Tecnologia", 02);

UPDATE tb_funcionarios
SET nome = "Luis"
WHERE id = 2;