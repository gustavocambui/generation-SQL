CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
		
        id BIGINT auto_increment,
        nome VARCHAR (255) NOT NULL,
        quantidade BIGINT,
        categoria VARCHAR (255),
        valor DECIMAL (9,2),
        
        PRIMARY KEY(id)
);