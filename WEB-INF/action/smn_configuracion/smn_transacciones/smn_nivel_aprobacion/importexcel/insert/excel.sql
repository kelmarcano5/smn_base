INSERT INTO smn_base.smn_nivel_aprobacion
(
	smn_nivel_aprobacion_id,
	smn_configuracion_estructura_id,
	nap_codigo,
	nap_descripcion,
	nap_rol,
	nap_secuencia_aprobacion,
	nap_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_nivel_aprobacion},
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
