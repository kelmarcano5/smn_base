UPDATE smn_base.smn_estructura_organizacional SET
	smn_configuracion_estructura_id=${fld:smn_configuracion_estructura_id},
	eor_codigo=${fld:eor_codigo},
	eor_nombre=${fld:eor_nombre},
	eor_centro_costo=${fld:eor_centro_costo},
	eor_clase_auxiliar=${fld:eor_clase_auxiliar},
	eor_auxiliar=${fld:eor_auxiliar},
	eor_idioma='${def:locale}',
	eor_usuario='${def:user}',
	eor_fecha_registro={d '${def:date}'},
	eor_hora='${def:time}'

WHERE
	smn_estructura_organizacional_id=${fld:id}

