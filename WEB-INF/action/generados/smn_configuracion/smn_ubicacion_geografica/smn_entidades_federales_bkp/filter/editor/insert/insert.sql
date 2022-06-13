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
	${seq:currval@smn_base.seq_smn_entidades_federales},
	${fld:efe_paises},
	${fld:efe_codigo},
	${fld:efe_nombre_corto},
	${fld:efe_nombre_largo},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
