SELECT pedidos.numero_pedido, clientes.nome, vendedores.nome_vendedor FROM pedidos
    INNER JOIN clientes
    ON pedidos.codigo_cliente = clientes.codigo_cliente
    INNER JOIN vendedores
    ON vendedores.codigo_vendedor=pedidos.codigo_vendedor