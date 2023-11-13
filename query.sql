-- Relatório de Clientes, Cores de Casas, Bairros e Carros
SELECT
    c.nome AS cliente_nome,
    c.sobrenome AS cliente_sobrenome,
    casa.cor AS cor_casa,
    b.nome AS bairro_nome,
    carro.modelo AS modelo_carro
FROM cliente c
JOIN casa ON casa.fk_cliente = c.id_cliente
JOIN bairro b ON casa.fk_bairro = b.id_bairro
LEFT JOIN carro ON carro.fk_cliente = c.id_cliente;
