INSERT INTO smn_base.smn_entidades_federales
(
	smn_entidades_federales_id,
	efe_paises,
	efe_codigo,
	efe_nombre_corto,
	efe_nombre_largo,
	efe_idioma,
	efe_usuario,
	efe_fecha_registro,
	efe_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_entidades_federales},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
