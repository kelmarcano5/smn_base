UPDATE smn_base.smn_vencimiento_cabecera SET
	tve_codigo=${fld:tve_codigo},
	tve_descripcion=${fld:tve_descripcion},
	tve_estatus=${fld:tve_estatus},
	tve_vigencia=${fld:tve_vigencia},
	tve_idioma='${def:locale}',
	tve_usuario='${def:user}',
	tve_fecha_registro={d '${def:date}'},
	tve_hora='${def:time}'

WHERE
	smn_vencimiento_cabecera_id=${fld:id}

