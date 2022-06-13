INSERT INTO smn_base.smn_estructura_uen
(
	smn_estructura_uen_id,
	eue_aplica_uen,
	eue_aplica_auxiliar_uen,
	eue_idioma,
	eue_usuario,
	eue_fecha_registro,
	eue_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_estructura_uen},
	${fld:eue_aplica_uen},
	${fld:eue_aplica_auxiliar_uen},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
