UPDATE smn_base.smn_condicion_pago SET
	cop_codigo=${fld:cop_codigo},
	cop_descripcion=${fld:cop_descripcion},
	cop_idioma='${def:locale}',
	cop_usuario='${def:user}',
	cop_fecha_registro={d '${def:date}'},
	cop_hora='${def:time}'

WHERE
	smn_condicion_pago_id=${fld:id}

