INSERT INTO smn_base.smn_afiliaciones
(
	smn_afiliaciones_id,
	afc_codigo,
	afc_descripcion,
	afc_afiliado,
	afc_modulo,
	afc_es_titular,
	afc_parentezco,
	afc_idioma,
	afc_usuario,
	afc_fecha_registro,
	afc_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_afiliaciones},
	${fld:afc_codigo},
	${fld:afc_descripcion},
	${fld:afc_afiliado},
	${fld:afc_modulo},
	${fld:afc_es_titular},
	${fld:afc_parentezco},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
