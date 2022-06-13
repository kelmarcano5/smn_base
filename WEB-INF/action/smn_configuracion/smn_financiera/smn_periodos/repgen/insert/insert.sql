INSERT INTO smn_base.smn_configuracion
(
	smn_configuracion_id,
	cfg_descripcion,
	cfg_actionroot,
	cfg_idioma,
	cfg_usuario,
	cfg_fecha_registro,
	cfg_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_configuracion},
	${fld:cfg_descripcion},
	'${def:actionroot}',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)