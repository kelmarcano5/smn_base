UPDATE smn_base.smn_formas_pago SET
	fop_codigo=${fld:fop_codigo},
	fop_descripcion=${fld:fop_descripcion},
	fop_medio_pago=${fld:fop_medio_pago},
	fop_requiere_banco=${fld:fop_requiere_banco},
	fop_franquicia=${fld:fop_franquicia},
	fop_idioma='${def:locale}',
	fop_usuario='${def:user}',
	fop_fecha_registro={d '${def:date}'},
	fop_hora='${def:time}'

WHERE
	smn_formas_pago_id=${fld:id}

