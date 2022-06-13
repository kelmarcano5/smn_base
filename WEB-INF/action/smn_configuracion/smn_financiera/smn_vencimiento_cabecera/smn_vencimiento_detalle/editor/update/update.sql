UPDATE smn_base.smn_vencimiento_detalle SET
	smn_vencimiento_cabecera_id=${fld:smn_vencimiento_cabecera_id},
	tvd_titulo=${fld:tvd_titulo},
	tvd_tipo_aplicacion=${fld:tvd_tipo_aplicacion},
	tvd_dias_desde=${fld:tvd_dias_desde},
	tvd_dias_hasta=${fld:tvd_dias_hasta},
	tvd_idioma='${def:locale}',
	tvd_usuario='${def:user}',
	tvd_fecha_registro={d '${def:date}'},
	tvd_hora='${def:time}'

WHERE
	smn_vencimiento_detalle_id=${fld:id}

