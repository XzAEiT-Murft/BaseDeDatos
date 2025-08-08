SELECT * FROM REPRESENTANTES
WHERE (OFICINA_REP IN (22,11,12))
OR (JEFE IS NULL AND FECHA_CONTRATO >= '1988-06-01')
OR (CUOTA < VENTAS AND VENTAS <= 600000)
ORDER BY Ventas DESC
GO


--listar todos los pedidos mostrando el numero de pedido, importe, nombre y limite de credito del cliente
SELECT 
    p.Num_Pedido, 
    p.Importe, 
    c.Empresa AS Nombre_Cliente, 
    c.Limite_Credito
FROM 
    Pedidos p
INNER JOIN 
    Clientes c ON p.Cliente = c.Num_Cli
ORDER by Importe DESC