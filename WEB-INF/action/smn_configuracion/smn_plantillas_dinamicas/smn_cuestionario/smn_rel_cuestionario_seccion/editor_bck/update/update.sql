UPDATE smn_base.smn_rel_cuestionario_seccion SET
	smn_cuestionario_id=${fld:smn_cuestionario_id},
	smn_seccion_id=${fld:smn_seccion_id},
	rcs_tipo_seccion=${fld:rcs_tipo_seccion},
	rcs_secuencia=${fld:rcs_secuencia},
	rcs_color_letra=${fld:rcs_color_letra},
	rcs_tipo_letra=${fld:rcs_tipo_letra},
	rcs_tamano_letra=${fld:rcs_tamano_letra},
	rcs_color_sombreado=${fld:rcs_color_sombreado},
	rcs_espacio_identacion=${fld:rcs_espacio_identacion}

WHERE
	smn_rel_cuestionario_seccion_id=${fld:id}

