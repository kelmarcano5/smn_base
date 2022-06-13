UPDATE smn_base.smn_rel_trans_docum_paso SET
	smn_transaccion_general_rf=${fld:smn_transaccion_general_rf},
	smn_documentos_generales_rf=${fld:smn_documentos_generales_rf},
	smn_paso_id=${fld:smn_paso_id},
	tpa_tiempo_paso=${fld:tpa_tiempo_paso},
	smn_nivel_aprobacion_inicial_rf=${fld:smn_nivel_aprobacion_inicial_rf},
	smn_nivel_aprobacion_final_rf=${fld:smn_nivel_aprobacion_final_rf},
	tpa_idioma='${def:locale}',
	tpa_usuario='${def:user}',
	tpa_fecha_registro={d '${def:date}'},
	tpa_hora='${def:time}'

WHERE
	smn_rel_trans_docum_paso_id=${fld:id}

