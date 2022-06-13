INSERT INTO smn_base.smn_parroquias
(
	smn_parroquias_id,
	prr_municipios,
	prr_codigo,
	prr_nombre_corto,
	prr_nombre_largo,
	prr_idioma,
	prr_usuario,
	prr_fecha_registro,
	prr_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_parroquias},
	${fld:prr_municipios},
	${fld:prr_codigo},
	${fld:prr_nombre_corto},
	${fld:prr_nombre_largo},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
