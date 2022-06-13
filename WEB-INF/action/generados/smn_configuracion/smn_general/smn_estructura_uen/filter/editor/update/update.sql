UPDATE smn_base.smn_estructura_uen SET
	eue_aplica_uen=${fld:eue_aplica_uen},
	eue_aplica_auxiliar_uen=${fld:eue_aplica_auxiliar_uen},
	eue_idioma='${def:locale}',
	eue_usuario='${def:user}',
	eue_fecha_registro={d '${def:date}'},
	eue_hora='${def:time}'

WHERE
	smn_estructura_uen_id=${fld:id}

