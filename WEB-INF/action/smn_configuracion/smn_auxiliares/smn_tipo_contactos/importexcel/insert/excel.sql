INSERT INTO smn_base.smn_tipo_contactos
(
	smn_tipo_contactos_id,
	tco_codigo,
	tco_descripcion,
	tco_clase,
	tco_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipo_contactos},
	?,
	?,
	?,
	{d '${def:date}'}
)
