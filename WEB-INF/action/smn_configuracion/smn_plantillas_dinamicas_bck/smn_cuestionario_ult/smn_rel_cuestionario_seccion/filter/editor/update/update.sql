UPDATE smn_base.smn_rel_cuestionario_seccion SET
	smn_cuestionario_id=${fld:smn_cuestionario_id},
	smn_seccion_id=${fld:smn_seccion_id},
	rcs_secuencia=${fld:rcs_secuencia}

WHERE
	smn_rel_cuestionario_seccion_id=${fld:id}

