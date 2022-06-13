INSERT INTO smn_base.smn_zonas_postales
(
	smn_zonas_postales_id,
	zpo_parroquias,
	zpo_codigo,
	zpo_idioma,
	zpo_usuario,
	zpo_fecha_registro,
	zpo_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_zonas_postales},
	${fld:zpo_parroquias},
	${fld:zpo_codigo},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
