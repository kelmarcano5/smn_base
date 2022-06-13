UPDATE smn_base.smn_activo_fijo SET
	acf_codigo=${fld:acf_codigo},
	acf_nombre=${fld:acf_nombre},
	acf_proveedor_exclusivo=${fld:acf_proveedor_exclusivo},
	acf_idioma='${def:locale}',
	acf_usuario='${def:user}',
	acf_fecha_registro={d '${def:date}'},
	acf_hora='${def:time}'

WHERE
	smn_afijo_id=${fld:id}

