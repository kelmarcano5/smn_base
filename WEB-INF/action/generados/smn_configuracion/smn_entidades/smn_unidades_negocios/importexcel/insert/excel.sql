INSERT INTO smn_base.smn_unidades_negocios
(
	smn_unidades_negocios_id,
	uen_codigo,
	uen_nombre,
	uen_responsable,
	uen_direccion,
	uen_telefono_fijo,
	uen_telefono_movil,
	uen_email,
	uen_idioma,
	uen_usuario,
	uen_fecha_registro,
	uen_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_unidades_negocios},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
