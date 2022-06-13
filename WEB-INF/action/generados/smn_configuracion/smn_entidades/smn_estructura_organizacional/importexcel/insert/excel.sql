INSERT INTO smn_base.smn_estructura_organizacional
(
	smn_estructura_organizacional_id,
	smn_configuracion_estructura_id,
	eor_codigo,
	eor_nombre,
	eor_centro_costo,
	eor_clase_auxiliar,
	eor_auxiliar,
	eor_idioma,
	eor_usuario,
	eor_fecha_registro,
	eor_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_estructura_organizacional},
	?,
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
