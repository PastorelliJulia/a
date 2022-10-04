DROP DATABASE IF EXISTS Patrimonio;
CREATE DATABASE Patrimonio charset=UTF8 COLLATE utf8_general_ci;
USE Patrimonio;

CREATE TABLE itens(
    ni NUMERIC(6) NOT NULL,
    aquisicao timestamp NOT NULL,
    denominacao varchar(100) not null,
    valor NUMERIC(10,2),
    img VARCHAR(200) DEFAULT 'default.png',
    CONSTRAINT pk_item PRIMARY KEY (ni)
);

DESCRIBE ITENS;
LOAD DATA INFILE 'D:/wellington/senai2022/2des/pwbe/aula09/docs/bd/itens.csv'
INTO TABLE itens
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT * FROM itens;