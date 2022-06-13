INSERT INTO smn_base.smn_activo_fijo
(
	smn_afijo_id,
	acf_codigo,
	acf_nombre,
	acf_proveedor_exclusivo,
	acf_idioma,
	acf_usuario,
	acf_fecha_registro,
	acf_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_activo_fijo},
	${fld:acf_codigo},
	${fld:acf_nombre},
	${fld:acf_proveedor_exclusivo},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
