INSERT INTO smn_base.smn_variable
(
	smn_variable_id,
	smn_tipo_variable_id,
	var_codigo,
	var_descripcion,
	var_estatus,
	var_idioma,
	var_usuario,
	var_fecha_registro,
	var_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_variable},
	${fld:smn_tipo_variable_id},
	${fld:var_codigo},
	${fld:var_descripcion},
	'AC',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
