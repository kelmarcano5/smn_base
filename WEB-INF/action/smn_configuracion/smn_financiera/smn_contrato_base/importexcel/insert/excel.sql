INSERT INTO smn_base.smn_contrato_base
(
	smn_contrato_base_id,
	ctr_codigo,
	ctr_nombre,
	ctr_transaccion_rf,
	ctr_tipo,
	ctr_fecha_vencimiento,
	ctr_corporacion_rf,
	ctr_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_contrato_base},
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
