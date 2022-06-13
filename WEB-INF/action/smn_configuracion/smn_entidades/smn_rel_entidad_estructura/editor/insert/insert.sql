INSERT INTO smn_base.smn_rel_entidad_estructura
(
	smn_rel_entidad_estructura_id,
	smn_entidades_id,
	smn_configuracion_estructura_id,
	rec_status,
	rec_idioma,
	rec_usuario,
	rec_fecha_registro,
	rec_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_entidad_estructura},
	${fld:smn_entidades_id},
	${fld:smn_configuracion_estructura_id},
	${fld:rec_status},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
