INSERT INTO smn_base.smn_estructura_codigo
(
	smn_estructura_codigo_id,
	smn_modulos_id,
	eco_codigo,
	eco_nombre,
	eco_niveles,
	eco_mascara,
	eco_separador,
	eco_idioma,
	eco_usuario,
	eco_fecha_registro,
	eco_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_estructura_codigo},
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
