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
	${seq:nextval@smn_base.seq_smn_parroquias},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
