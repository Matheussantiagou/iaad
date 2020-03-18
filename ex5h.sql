SELECT clientes.nome, COUNT(item_pedidos.codigo_produto) FROM pedidos
    INNER JOIN clientes 
    ON pedidos.codigo_cliente = clientes.codigo_cliente
    INNER JOIN item_pedidos
    ON pedidos.numero_pedido = item_pedidos.numero_pedido
    GROUP BY nome