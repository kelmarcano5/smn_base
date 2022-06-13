INSERT INTO smn_base.smn_vencimiento_detalle
(
	smn_vencimiento_detalle_id,
	smn_vencimiento_cabecera_id,
	tvd_titulo,
	tvd_tipo_aplicacion,
	tvd_dias_desde,
	tvd_dias_hasta,
	tvd_idioma,
	tvd_usuario,
	tvd_fecha_registro,
	tvd_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_vencimiento_detalle},
	${fld:smn_vencimiento_cabecera_id},
	${fld:tvd_titulo},
	${fld:tvd_tipo_aplicacion},
	${fld:tvd_dias_desde},
	${fld:tvd_dias_hasta},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
