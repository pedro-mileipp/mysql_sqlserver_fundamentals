
CREATE DATABASE secao05;

USE secao05;
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


INSERT INTO tipos_produto (descricao) VALUES ('Computadores'); -- inserting in the table tipos_produto
INSERT INTO tipos_produto (descricao) VALUES ('Impressoras');

INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', 1); -- inserting in the table produto
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Laptop', '1800', 1); 
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Impressora Jato de Tinta', '300', 2); 
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Impressora Laser', '500', 2); 
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Notebook', '2000', 1); 

-- Filtrando consultas com WHERE

SELECT * FROM produto WHERE codigo_tipo = 2; -- todas as linhas onde o codigo_tipo = 2 serão mostradas

SELECT * FROM produto WHERE codigo_tipo = 2 AND preco > 300; -- todas as linhas onde o codigo_tipo = 2 e o preco > 300 serão mostradas