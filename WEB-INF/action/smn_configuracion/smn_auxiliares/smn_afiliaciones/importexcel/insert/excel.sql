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
	${seq:nextval@smn_base.seq_smn_afiliaciones},
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
