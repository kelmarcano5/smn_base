INSERT INTO smn_base.smn_tipos_servicios
(
	smn_tipos_servicios_id,
	tsr_codigo,
	tsr_descripcion,
	tsr_idioma,
	tsr_usuario,
	tsr_fecha_registro,
	trs_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipos_servicios},
	${fld:tsr_codigo},
	${fld:tsr_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
