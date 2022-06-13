<<<<<<< HEAD
INSERT INTO smn_base.smn_tipo_variable
(
	smn_tipo_variable_id,
	tva_codigo,
	tva_descripcion,
	tva_estatus,
	tva_idioma,
	tva_usuario,
	tva_fecha_registro,
	tva_hora,
	tva_mostrar_titulo,
	tva_limite_caracteres,
	tva_limite_lineas
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_variable},
	${fld:tva_codigo},
	${fld:tva_descripcion},
	'AC',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:tva_mostrar_titulo},
	${fld:tva_limite_caracteres},
	${fld:tva_limite_lineas}
)
=======
INSERT INTO smn_base.smn_tipo_variable
(
	smn_tipo_variable_id,
	tva_codigo,
	tva_descripcion,
	tva_estatus,
	tva_idioma,
	tva_usuario,
	tva_fecha_registro,
	tva_hora,
	tva_mostrar_titulo,
	tva_limite_caracteres,
	tva_limite_lineas
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_variable},
	${fld:tva_codigo},
	${fld:tva_descripcion},
	'AC',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:tva_mostrar_titulo},
	${fld:tva_limite_caracteres},
	${fld:tva_limite_lineas}
)
>>>>>>> master
