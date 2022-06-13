INSERT INTO smn_base.smn_ciudades
(
	smn_ciudades_id,
	ciu_entidades_federales,
	ciu_codigo,
	ciu_nombre_corto,
	ciu_nombre_largo,
	ciu_idioma,
	ciu_usuario,
	ciu_fecha_registro,
	ciu_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_ciudades},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
