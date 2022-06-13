INSERT INTO smn_base.smn_parentezco
(
	smn_parentezco_id,
	ptz_codigo,
	ptz_descripcion,
	ptz_idioma,
	ptz_usuario,
	ptz_fecha_registro,
	ptz_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_parentezco},
	${fld:ptz_codigo},
	${fld:ptz_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
