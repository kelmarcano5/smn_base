UPDATE smn_base.smn_estructura_uen SET
	eue_aplica_uen=${fld:eue_aplica_uen},
	eue_aplica_auxiliar_uen=${fld:eue_aplica_auxiliar_uen},
	eue_idioma='${def:locale}',
	eue_usuario='${def:user}'
WHERE
	smn_base.smn_estructura_uen.smn_estructura_uen_id=${fld:id}

