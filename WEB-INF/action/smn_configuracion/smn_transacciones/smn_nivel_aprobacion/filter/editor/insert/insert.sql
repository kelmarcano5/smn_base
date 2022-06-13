INSERT INTO smn_base.smn_nivel_aprobacion
(
	smn_nivel_aprobacion_id,
	smn_configuracion_estructura_id,
	nap_codigo,
	nap_descripcion,
	nap_rol,
	nap_secuencia_aprobacion,
	nap_idioma,
	nap_usuario,
	nap_fecha_registro,
	nap_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_nivel_aprobacion},
	${fld:smn_configuracion_estructura_id},
	${fld:nap_codigo},
	${fld:nap_descripcion},
	${fld:nap_rol},
	${fld:nap_secuencia_aprobacion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
