-- Active: 1670859966277@@127.0.0.1@3306@secao04

-- DQL -> Data Query Language studies and pratice
CREATE DATABASE secao04;
USE secao04;

-- tables
CREATE TABLE tipos_produto(
    codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(80) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE produto(
    codigo INT NOT NULL AUTO_INCREMENT, -- PRIMARY KEY 
    descricao VARCHAR(80) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    codigo_tipo INT NOT NULL,
    PRIMARY KEY(codigo),
    FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)   
);

-- inserts
INSERT INTO tipos_produto (descricao) VALUES ('Computadores'); -- inserting in the table tipos_produto
INSERT INTO tipos_produto (descricao) VALUES ('Impressoras');

INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', 1); -- inserting in the table produto
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Laptop', '1800', 1); 
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Impressora Jato de Tinta', '300', 2); 
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Impressora Laser', '500', 2); 
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Notebook', '2000', 1); 


-- QUERIES (CONSULTATIONS)

SELECT * FROM tipos_produto; -- show tipos_produto table
SELECT codigo, descricao FROM tipos_produto;
-- Lines 33 and 34 have the same result, because in line 33 the * means bring everything. However, codigo and descricao are the only columns in the table.COMMENT

SELECT codigo, descricao FROM tipos_produto;
-- If the order of the columns in the statement is inverted, the result will appear in the same order, that is, the order of the columns shown depends on the order they are in the statement.

SELECT * FROM produto; -- show produto table
SELECT codigo, descricao, preco, codigo_tipo FROM produto; -- default column order
SELECT codigo_tipo, codigo, descricao, preco FROM produto; -- order different from the order entered in the instruction, diferent results

-- ALIAS
SELECT p.codigo AS cod, p.descricao AS descr, p.preco as price, p.codigo_tipo AS ctp FROM produto AS p;
-- ALIAS (AS) are the custom names we can give the columns
