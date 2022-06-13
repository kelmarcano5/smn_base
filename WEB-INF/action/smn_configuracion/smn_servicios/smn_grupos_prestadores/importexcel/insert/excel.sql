INSERT INTO smn_base.smn_grupos_prestadores
(
	smn_grupos_prestadores_id,
	gpp_codigo,
	gpp_descripcion,
	gpp_area_servicio,
	gpp_unidad_servicio,
	gpp_orden_atencion,
	gpp_idioma,
	gpp_usuario,
	gpp_fecha_registro,
	gpp_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_grupos_prestadores},
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
