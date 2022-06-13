INSERT INTO smn_base.smn_rel_entidad_estructura
(
	smn_rel_entidad_estructura_id,
	smn_entidades_id,
	smn_configuracion_estructura_id,
	rec_status,
	rec_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_entidad_estructura},
	?,
	?,
	?,
	{d '${def:date}'}
)
