UPDATE smn_base.smn_corporaciones SET
	crp_codigo=${fld:crp_codigo},
	crp_nombre=${fld:crp_nombre},
	crp_unidad_negocio=${fld:crp_unidad_negocio},
	crp_moneda=${fld:crp_moneda},
	crp_direccion=${fld:crp_direccion},
	crp_idioma='${def:locale}',
	crp_usuario='${def:user}',
	crp_fecha_registro={d '${def:date}'},
	crp_hora='${def:time}'

WHERE
	smn_corporaciones_id=${fld:id}

