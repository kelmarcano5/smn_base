UPDATE smn_base.smn_clase_auxiliar SET
	cla_codigo=${fld:cla_codigo},
	cla_nombre=${fld:cla_nombre},
	cla_modulo=${fld:cla_modulo},
	cla_naturaleza=${fld:cla_naturaleza},
	cla_idioma='${def:locale}',
	cla_usuario='${def:user}',
	cla_fecha_registro={d '${def:date}'},
	cla_hora='${def:time}'

WHERE
	smn_clase_auxiliar_id=${fld:id}

