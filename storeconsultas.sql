
------Para registro de Compra
SELECT
    d.documento_id,
    d.documento_tipo,
    d.numero_documento_id,
    d.documento_estado,
    d.fecha_emision,
    d.fecha_pago,
    d.documento_afecto,
    d.tasa_tipo,
    d.total,
    d.subtotal,
    d.imp_gravado,
    d.imp_nogravado,
    p.pedido_id,
    p.estado AS estado_pedido,
    p.cantidad_comprada,
    p.pc AS precio_compra,
    (p.cantidad_comprada * p.pc) AS total_comprado,
    pr.producto_id,
    pr.nombre_producto,
    pr.descripcion,
    pr.precio AS precio_producto,
    c.categoria_id,
    c.nombre_categoria,
    c.nombre_subcategoria,
    pe.persona_id,
    pe.nombre_persona,
    pe.razonsocial_persona,
    pe.direccion,
    pe.telefono,
    pe.persona_tipo
FROM
    Inventario AS inv
    JOIN Documento AS d ON inv.documento_id = d.documento_id
    JOIN Pedido AS p ON inv.pedido_id = p.pedido_id
    JOIN Producto AS pr ON inv.producto_id = pr.producto_id
    JOIN Categoria AS c ON pr.categoria_id = c.categoria_id
    JOIN Persona AS pe ON p.persona_id = pe.persona_id
WHERE
    d.documento_estado = 'COMPRA';

------Para registro de Venta 

SELECT
    d.documento_id,
    d.documento_tipo,
    d.numero_documento_id,
    d.documento_estado,
    d.fecha_emision,
    d.fecha_pago,
    d.documento_afecto,
    d.tasa_tipo,
    d.total,
    d.subtotal,
    d.imp_gravado,
    d.imp_nogravado,
    p.pedido_id,
    p.estado AS estado_pedido,
    p.cantidad_vendida,
    p.pv AS precio_venta,
    (p.cantidad_vendida * p.pv) AS total_vendido,
    pr.producto_id,
    pr.nombre_producto,
    pr.descripcion,
    pr.precio AS precio_producto,
    c.categoria_id,
    c.nombre_categoria,
    c.nombre_subcategoria,
    pe.persona_id,
    pe.nombre_persona,
    pe.razonsocial_persona,
    pe.direccion,
    pe.telefono,
    pe.persona_tipo
FROM
    Inventario AS inv
    JOIN Documento AS d ON inv.documento_id = d.documento_id
    JOIN Pedido AS p ON inv.pedido_id = p.pedido_id
    JOIN Producto AS pr ON inv.producto_id = pr.producto_id
    JOIN Categoria AS c ON pr.categoria_id = c.categoria_id
    JOIN Persona AS pe ON p.persona_id = pe.persona_id
WHERE
    d.documento_estado = 'VENTA';
