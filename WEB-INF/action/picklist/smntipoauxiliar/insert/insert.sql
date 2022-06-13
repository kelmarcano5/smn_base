INSERT INTO smn_base.smn_tipo_auxiliar
(
	smn_tipo_auxiliar_id,
	tia_codigo,
	tia_nombre,
	tia_idioma,
	tia_usuario,
	tia_fecha_registro
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_auxiliar},
	${fld:tia_codigo2},
	${fld:tia_nombre2},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'}
)
