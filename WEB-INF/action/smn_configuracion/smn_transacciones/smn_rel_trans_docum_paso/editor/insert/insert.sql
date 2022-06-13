INSERT INTO smn_base.smn_rel_trans_docum_paso
(
	smn_rel_trans_docum_paso_id,
	smn_transaccion_general_rf,
	smn_documentos_generales_rf,
	smn_paso_id,
	tpa_tiempo_paso,
	smn_nivel_aprobacion_inicial_rf,
	smn_nivel_aprobacion_final_rf,
	tpa_idioma,
	tpa_usuario,
	tpa_fecha_registro,
	tpa_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_trans_docum_paso},
	${fld:smn_transaccion_general_rf},
	${fld:smn_documentos_generales_rf},
	${fld:smn_paso_id},
	${fld:tpa_tiempo_paso},
	${fld:smn_nivel_aprobacion_inicial_rf},
	${fld:smn_nivel_aprobacion_final_rf},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
