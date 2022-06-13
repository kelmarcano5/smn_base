INSERT INTO smn_base.smn_titulo
(
	smn_titulo_id,
	tlo_codigo,
	tlo_descripcion,
	tlo_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_titulo},
	?,
	?,
	{d '${def:date}'}
)
