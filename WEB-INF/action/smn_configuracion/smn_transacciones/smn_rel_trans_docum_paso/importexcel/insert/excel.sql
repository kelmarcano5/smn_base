INSERT INTO smn_base.smn_rel_trans_docum_paso
(
	smn_rel_trans_docum_paso_id,
	smn_transaccion_general_rf,
	smn_documentos_generales_rf,
	smn_paso_id,
	tpa_tiempo_paso,
	smn_nivel_aprobacion_inicial_rf,
	smn_nivel_aprobacion_final_rf,
	tpa_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_trans_docum_paso},
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
