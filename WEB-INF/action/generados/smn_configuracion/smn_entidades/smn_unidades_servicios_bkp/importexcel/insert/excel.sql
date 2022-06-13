INSERT INTO smn_base.smn_unidades_servicios
(
	smn_unidades_servicios_id,
	smn_areas_servicios_id,
	uns_codigo,
	uns_descripcion,
	uns_centro_costo,
	uns_idioma,
	uns_usuario,
	uns_fecha_registro,
	uns_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_unidades_servicios},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
