INSERT INTO smn_base.smn_municipios
(
	smn_municipios_id,
	mun_ciudades,
	mun_codigo,
	mun_nombre_corto,
	mun_nombre_largo,
	mun_idioma,
	mun_usuario,
	mun_fecha_registro,
	mun_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_municipios},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
