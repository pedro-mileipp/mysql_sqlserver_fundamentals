-- Consultas em múltiplas tabelas

SELECT produto.codigo, produto.descricao, produto.preco, tipos_produto.codigo AS 'Código do tipo', tipos_produto.descricao AS 'Tipo' FROM produto, tipos_produto -- WHERE produto.codigo_tipo = tipos_produto.codigo;
    