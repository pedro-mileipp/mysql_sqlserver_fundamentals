-- DTL -> Data Transaction Language -> BEGIN(1), COMMIT(2) E ROOLBACK(3). (1): Marcar o começo de uma transação, que pode ser completada ou não. (2) Finaliza uma transação. (3) Faz com que as mudanças nos dados existentes desde o último commit sejam descartadas.

USE secao04;

-- Transaction: Todo comando realizado entre cliente e servidor de Banco de Dados.

START TRANSACTION; 
    INSERT INTO pessoas (nome, ano_nascimento, altura) VALUES ('Francisco Ferdinando', 2017, 100);
COMMIT; -- Depois do START TRANSACTION os dados só serão gravados no banco de dados após o COMMIT, dps do COMMIT não tem como usar ROLLBACK.

START TRANSACTION; 
    INSERT INTO pessoas (nome, ano_nascimento, altura) VALUES ('Irene Costa', 2017, 100);
ROLLBACK; -- não será adicionado na tabela, pois o ROLLBACK não grava a transação no banco de dados.