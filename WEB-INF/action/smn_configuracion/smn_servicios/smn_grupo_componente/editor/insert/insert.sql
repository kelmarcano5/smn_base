INSERT INTO smn_base.smn_grupo_componente
(
	smn_grupo_componente_id,
	gco_codigo,
	gco_descripcion,
	gco_idioma,
	gco_usuario,
	gco_fecha_registro,
	gco_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_grupo_componente},
	${fld:gco_codigo},
	${fld:gco_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
