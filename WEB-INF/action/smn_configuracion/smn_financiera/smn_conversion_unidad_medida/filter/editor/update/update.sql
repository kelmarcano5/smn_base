UPDATE smn_base.smn_conversion_unidad_medida SET
	smn_unidad_medida_origen_rf=${fld:smn_unidad_medida_origen_rf},
	smn_unidad_medida_destino_rf=${fld:smn_unidad_medida_destino_rf},
	cou_factor_conversion=${fld:cou_factor_conversion},
	cou_signo_conversion=${fld:cou_signo_conversion},
	cou_idioma='${def:locale}',
	cou_usuario='${def:user}',
	cou_fecha_registro={d '${def:date}'},
	cou_hora='${def:time}'

WHERE
	smn_conversion_unidad_medida_id=${fld:id}

