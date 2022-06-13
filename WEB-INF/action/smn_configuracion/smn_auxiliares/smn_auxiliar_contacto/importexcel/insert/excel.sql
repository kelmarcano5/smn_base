INSERT INTO smn_base.smn_auxiliar_contacto
(
	smn_auxiliar_contacto_id,
	smn_clase_auxiliar_rf,
	smn_auxiliar_rf,
	smn_tipo_contactos_rf,
	auc_descripcion,
	auc_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_auxiliar_contacto},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
