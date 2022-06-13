INSERT INTO smn_base.smn_paso
(
	smn_paso_id,
	pas_codigo,
	pas_descripcion,
	pas_cod_paso_anterior,
	pas_cod_paso_siguiente,
	pas_estatus_doc,
	pas_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_paso},
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
