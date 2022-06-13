INSERT INTO smn_base.smn_modelo
(
	smn_modelo_id,
	mod_codigo,
	mod_descripcion,
	mod_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_modelo},
	?,
	?,
	{d '${def:date}'}
)
