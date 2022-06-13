INSERT INTO smn_base.smn_item
(
	smn_item_id,
	itm_codigo,
	itm_nombre,
	itm_idioma,
	itm_usuario,
	itm_fecha_registro,
	itm_hora,
	smn_nivel_estructura_id
)
VALUES
(
	${seq:currval@smn_base.seq_smn_item},
	${fld:itm_codigo},
	${fld:itm_nombre},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:smn_nivel_estructura}
);

INSERT INTO smn_inventario.smn_caracteristica_item
(
	smn_caracteristica_item_id,
	smn_item_rf,
	cit_codigo_barra,
	cit_codigo_qr,
	cit_codigo_alterno,
	cit_descripcion_tecnica,
	cit_es_medicamento,
	cit_req_control_lote,
	cit_req_control_vencimiento,
	cit_tipo_costo,
	cit_valoracion_inventario,
	cit_metodo_despacho,
	cit_es_reusable,
	cit_origen_producto,
	smn_centro_costo_rf,
	cit_item_compuesto,
	cit_proveedor_exclusivo,
	cit_almacenado,
	cit_estatus,
	cit_vigencia,
	cit_idioma,
	cit_usuario,
	cit_fecha_registro,
	cit_hora
)
VALUES
(
	${seq:nextval@smn_inventario.seq_smn_caracteristica_item},
	${seq:currval@smn_base.seq_smn_item},
	${fld:itm_codigo},
	${fld:itm_codigo},
	${fld:itm_codigo},
	${fld:itm_nombre},
	'NO',
	'NO',
	'NO',
	'PR',
	'FI',
	'FI',
	'NO',
	'NA',
	0,
	'NO',
	null,
	'NO',
	'AC',
	{d '${def:date}'},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
);

