UPDATE smn_base.smn_afiliaciones SET
	afc_codigo=${fld:afc_codigo},
	afc_descripcion=${fld:afc_descripcion},
	acf_auxiliar_persona_natural=${fld:acf_auxiliar_persona_natural},
	afc_modulo=${fld:afc_modulo},
	afc_es_titular=${fld:afc_es_titular},
	afc_titular=${fld:afc_titular},
	afc_parentezco=${fld:afc_parentezco},
	afc_idioma='${def:locale}',
	afc_usuario='${def:user}',
	afc_fecha_registro={d '${def:date}'},
	afc_hora='${def:time}'

WHERE
	smn_afiliaciones_id=${fld:id}

