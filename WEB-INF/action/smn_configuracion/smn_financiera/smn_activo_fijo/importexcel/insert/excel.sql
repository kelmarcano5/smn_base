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
	${seq:nextval@smn_base.seq_smn_activo_fijo},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
