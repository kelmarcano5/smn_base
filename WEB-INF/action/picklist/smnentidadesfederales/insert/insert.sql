INSERT INTO smn_base.smn_entidades_federales
(
	smn_entidades_federales_id,
	smn_paises_id,
	efe_codigo,
	efe_nombre_corto,
	efe_nombre_largo,
	efe_idioma,
	efe_usuario,
	efe_fecha_registro
)
VALUES
(
	${seq:currval@smn_base.seq_smn_entidades_federales},
	${fld:smn_paises_id2},
	${fld:efe_codigo2},
	${fld:efe_nombre_corto2},
	${fld:efe_nombre_largo2},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'}
)
