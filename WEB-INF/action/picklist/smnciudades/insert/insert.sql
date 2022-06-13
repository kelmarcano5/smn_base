INSERT INTO smn_base.smn_ciudades
(
	smn_ciudades_id,
	smn_entidades_federales_id,
	ciu_codigo,
	ciu_nombre_corto,
	ciu_nombre_largo,
	ciu_idioma,
	ciu_usuario,
	ciu_fecha_registro
)
VALUES
(
	${seq:currval@smn_base.seq_smn_ciudades},
	${fld:smn_entidades_federales_id2},
	${fld:ciu_codigo2},
	${fld:ciu_nombre_corto2},
	${fld:ciu_nombre_largo2},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'}
)
