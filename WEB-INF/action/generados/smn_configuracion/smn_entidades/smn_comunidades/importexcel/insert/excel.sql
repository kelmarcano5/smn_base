INSERT INTO smn_base.smn_comunidades
(
	smn_comunidades_id,
	cmn_codigo,
	cmn_nombre,
	cmn_unidad_negocio,
	cmn_idioma,
	cmn_usuario,
	cmn_fecha_registro,
	cmn_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_comunidades},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
