INSERT INTO smn_base.smn_grupo_prestador_servicio_frecuencia
(
	smn_grupo_prestador_servicio_frecuencia_id,
	smn_grupos_prestadores_id,
	smn_prestadores_servicios_id,
	smn_servicios_id,
	gps_frecuencia,
	gps_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_grupo_prestador_servicio_frecuencia},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
