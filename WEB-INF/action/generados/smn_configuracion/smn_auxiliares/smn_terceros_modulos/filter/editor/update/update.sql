UPDATE smn_base.smn_terceros_modulos SET
	smn_terceros_id=${fld:smn_terceros_id},
	smn_app_id=${fld:smn_app_id},
	trm_codigo=${fld:trm_codigo},
	trm_nombre=${fld:trm_nombre},
	trm_idioma='${def:locale}',
	trm_usuario='${def:user}',
	trm_fecha_registro={d '${def:date}'},
	trm_hora='${def:time}'

WHERE
	smn_terceros_modulos_id=${fld:id}

