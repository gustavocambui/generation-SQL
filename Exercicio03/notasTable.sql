USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT auto_increment,
    nome VARCHAR (255),
    turma INT,
    matricula INT,
	nota DECIMAL,
    
    PRIMARY KEY (id)
);