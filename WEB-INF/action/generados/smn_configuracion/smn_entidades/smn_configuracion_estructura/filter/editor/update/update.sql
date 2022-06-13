UPDATE smn_base.smn_configuracion_estructura SET
	coe_codigo=${fld:coe_codigo},
	coe_nombre=${fld:coe_nombre},
	coe_niveles=${fld:coe_niveles},
	coe_mascara=${fld:coe_mascara},
	coe_separador=${fld:coe_separador},
	coe_idioma='${def:locale}',
	coe_usuario='${def:user}',
	coe_fecha_registro={d '${def:date}'},
	coe_hora='${def:time}'

WHERE
	smn_configuracion_estructura_id=${fld:id}

