INSERT INTO smn_base.smn_almacen
(
	smn_almacen_id,
	alm_codigo,
	alm_nombre,
	alm_idioma,
	alm_usuario,
	alm_fecha_registro,
	alm_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_almacen},
	${fld:alm_codigo},
	${fld:alm_nombre},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
