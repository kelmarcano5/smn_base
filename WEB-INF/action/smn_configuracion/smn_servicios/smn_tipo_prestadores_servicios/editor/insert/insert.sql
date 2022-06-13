INSERT INTO smn_base.smn_tipo_prestadores_servicios
(
	smn_tipo_prestadores_servicios_id,
	tps_codigo,
	tps_descripcion,
	tps_idioma,
	tps_usuario,
	tps_fecha_registro,
	tps_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_prestadores_servicios},
	${fld:tps_codigo},
	${fld:tps_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
