INSERT INTO smn_base.smn_tipo_contribuyente
(
	smn_tipo_contribuyente_id,
	tco_codigo,
	tco_descripcion,
	tco_estatus,
	tco_idioma,
	tco_usuario,
	tco_fecha_registro,
	tco_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_contribuyente},
	${fld:tco_codigo},
	${fld:tco_descripcion},
	${fld:tco_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
