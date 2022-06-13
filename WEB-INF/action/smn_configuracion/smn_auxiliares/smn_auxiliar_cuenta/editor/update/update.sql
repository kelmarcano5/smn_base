UPDATE smn_base.smn_auxiliar SET
	smn_naturaleza_auxiliar_rf='2',
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	aux_tipo_persona=${fld:aux_tipo_persona},
	aux_codigo=${fld:aux_codigo},
	aux_descripcion=${fld:aux_descripcion},
	aux_idioma='${def:locale}',
	aux_usuario='${def:user}',
	aux_fecha_registro={d '${def:date}'},
	aux_hora='${def:time}'

WHERE
	smn_auxiliar_id=${fld:id}

