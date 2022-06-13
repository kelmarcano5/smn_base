INSERT INTO smn_base.smn_auxiliar_unidades_servicios
(
	smn_auxiliar_unidades_servicios_id,
	smn_auxiliar_areas_servicios_id,
	tns_codigo,
	tns_descripcion,
	tns_idioma,
	tns_usuario,
	tns_fecha_registro,
	tns_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar_unidades_servicios},
	${fld:smn_auxiliar_areas_servicios_id},
	${fld:tns_codigo},
	${fld:tns_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
