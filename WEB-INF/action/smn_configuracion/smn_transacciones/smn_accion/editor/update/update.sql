UPDATE smn_base.smn_accion SET
	acc_codigo=${fld:acc_codigo},
	acc_descripcion=${fld:acc_descripcion},
	acc_tipo=${fld:acc_tipo},
	smn_mensajes_rf=${fld:smn_mensajes_rf},
	acc_metodo=${fld:acc_metodo},
	acc_tipo_acto_rol=${fld:acc_tipo_acto_rol},
	acc_idioma='${def:locale}',
	acc_usuario='${def:user}',
	acc_fecha_registro={d '${def:date}'},
	acc_hora='${def:time}'

WHERE
	smn_accion_id=${fld:id}

