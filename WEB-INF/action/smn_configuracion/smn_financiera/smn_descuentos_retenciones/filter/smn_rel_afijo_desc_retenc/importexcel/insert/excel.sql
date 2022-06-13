INSERT INTO smn_base.smn_rel_afijo_desc_retenc
(
	smn_rel_afijo_desc_retenc_id,
	smn_descuentos_retenciones_id,
	smn_afijo_id,
	rad_idioma,
	rad_usuario,
	rad_fecha_registro,
	rad_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_afijo_desc_retenc},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
