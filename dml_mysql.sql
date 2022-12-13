-- DML -> Data Manipulation Language

-- INSERT (DML Statement)

USE secao04;
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('Notebook Dell', 2500, 1);

INSERT INTO tipos_produto (descricao) VALUES ('Apple'); -- inserting new type of product

INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('MacBook M1', 3000, 3);
INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('MacBokk M2', 3000, 3); -- It is written wrong on purpose, but it is for didactic purposes and will be corrected when the UPDATE command is shown.

INSERT INTO produto (descricao, preco, codigo_tipo) VALUES ('IPhone 13', 3000, 1); -- the codigo is intentionally wrong, it will be corrected with UPDATE


-- UPDATE (DML Statement)

UPDATE produto set codigo_tipo = 3 WHERE codigo = 9; -- codigo has change
UPDATE produto set descricao = 'MacBook M2' WHERE codigo = 8; -- MacBokk it was corrected. It is possible to change the other registers, such as the preco
UPDATE produto SET preco = 2900 WHERE codigo = 9;


-- DELETE (DML Statement)
DELETE FROM produto WHERE codigo = 10; -- IPhone was deleted
