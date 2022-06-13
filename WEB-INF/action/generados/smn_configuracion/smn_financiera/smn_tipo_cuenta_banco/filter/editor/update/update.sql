UPDATE smn_base.smn_tipo_cuenta_banco SET
	tcb_codigo=${fld:tcb_codigo},
	tcb_descripcion=${fld:tcb_descripcion},
	tcb_idioma='${def:locale}',
	tcb_usuario='${def:user}',
	tcb_fecha_registro={d '${def:date}'},
	tcb_hora='${def:time}'

WHERE
	smn_tipo_cuenta_banco_id=${fld:id}

