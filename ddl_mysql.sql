-- DDL -> Data Definition Language: CREATE, ALTER E DROP; criar, alterar e excluir banco de dados, tabelas e elementos associados como indíce e visão.

-- CREATE

USE secao04;
CREATE TABLE pessoas(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO pessoas (nome) VALUES('Larissa Gomes');
INSERT INTO pessoas (nome) VALUES('Pedro Mileipp');

-- ALTER
ALTER TABLE pessoas
    ADD ano_nascimento INT altura INT;

ALTER TABLE pessoas
    ADD altura INT;

-- ALTER TABLE
--     DROP COLUMN altura; deleta a coluna altura

------------------------ UPDATE -> adicionando nas novas colunas

UPDATE pessoas SET ano_nascimento = 2002, altura = 175 WHERE id = 2;
UPDATE pessoas SET ano_nascimento = 2004, altura = 165 WHERE id = 1;


-- DROP

-- DROP TABLE pessoas; delete a tabela pessoas