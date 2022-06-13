INSERT INTO smn_base.smn_grupo_prestador_servicio_frecuencia
(
	smn_grupo_prestador_servicio_frecuencia_id,
	smn_grupos_prestadores_id,
	smn_prestadores_servicios_id,
	smn_servicios_id,
	gps_frecuencia,
	gps_idioma,
	gps_usuario,
	gps_fecha_registro,
	gps_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_grupo_prestador_servicio_frecuencia},
	${fld:smn_grupos_prestadores_id},
	${fld:smn_prestadores_servicios_id},
	${fld:smn_servicios_id},
	${fld:gps_frecuencia},
	'${def:locale}',
	{d '${def:date}'},
	{d '${def:date}'},
	'${def:time}'
)
