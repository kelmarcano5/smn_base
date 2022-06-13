INSERT INTO smn_base.smn_vencimiento_cabecera
(
	smn_vencimiento_cabecera_id,
	tve_codigo,
	tve_descripcion,
	tve_estatus,
	tve_vigencia,
	tve_idioma,
	tve_usuario,
	tve_fecha_registro,
	tve_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_vencimiento_cabecera},
	${fld:tve_codigo},
	${fld:tve_descripcion},
	${fld:tve_estatus},
	${fld:tve_vigencia},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
