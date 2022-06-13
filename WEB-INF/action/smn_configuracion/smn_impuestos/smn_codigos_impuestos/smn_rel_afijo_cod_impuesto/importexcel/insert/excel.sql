INSERT INTO smn_base.smn_rel_afijo_cod_impuesto
(
	smn_rel_afijo_cod_impuesto_id,
	smn_afijo_id,
	smn_codigos_impuestos_id,
	rai_idioma,
	rai_usuario,
	rai_fecha_registro,
	rai_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_afijo_cod_impuesto},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
