INSERT INTO smn_base.smn_grupo_titulo_impresion
(
	smn_grupo_titulo_impresion_id,
	gti_codigo,
	gti_descripcion,
	gti_estatus,
	gti_fecha_vigencia,
	gti_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_grupo_titulo_impresion},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
