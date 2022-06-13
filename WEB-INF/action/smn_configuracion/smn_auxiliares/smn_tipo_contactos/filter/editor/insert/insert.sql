INSERT INTO smn_base.smn_tipo_contactos
(
	smn_tipo_contactos_id,
	tco_codigo,
	tco_descripcion,
	tco_clase,
	tco_idioma,
	tco_usuario,
	tco_fecha_registro,
	tco_hora,
	tco_envia_mensaje
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_contactos},
	${fld:tco_codigo},
	${fld:tco_descripcion},
	${fld:tco_clase},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:tco_envia_mensaje}
)
