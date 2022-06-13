INSERT INTO smn_base.smn_auxiliar
(
	smn_auxiliar_id,
	smn_naturaleza_auxiliar_rf,
	smn_clase_auxiliar_rf,
	aux_tipo_persona,
	aux_codigo,
	aux_descripcion,
	aux_idioma,
	aux_usuario,
	aux_fecha_registro,
	aux_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar},
	'2',
	${fld:smn_clase_auxiliar_rf},
	${fld:aux_tipo_persona},
	${fld:aux_codigo},
	${fld:aux_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
