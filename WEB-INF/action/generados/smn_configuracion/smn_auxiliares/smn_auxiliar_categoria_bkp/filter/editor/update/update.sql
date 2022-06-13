UPDATE smn_base.smn_auxiliar_categoria SET
	aca_codigo=${fld:aca_codigo},
	aca_descripcion=${fld:aca_descripcion},
	aca_clase_auxiliar=${fld:aca_clase_auxiliar},
	aca_tipo_persona=${fld:aca_tipo_persona},
	aca_idioma='${def:locale}',
	aca_usuario='${def:user}',
	aca_fecha_registro={d '${def:date}'},
	aca_hora='${def:time}'

WHERE
	smn_auxiliar_categoria_id=${fld:id}

