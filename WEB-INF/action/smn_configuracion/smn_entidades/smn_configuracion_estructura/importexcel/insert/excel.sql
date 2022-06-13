INSERT INTO smn_base.smn_configuracion_estructura
(
	smn_configuracion_estructura_id,
	coe_codigo,
	coe_nombre,
	coe_niveles,
	coe_mascara,
	coe_separador,
	coe_idioma,
	coe_usuario,
	coe_fecha_registro,
	coe_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_configuracion_estructura},
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
