UPDATE smn_base.smn_auxiliar_centro_costo SET
	tco_codigo=${fld:tco_codigo},
	tco_descripcion_corta=${fld:tco_descripcion_corta},
	tco_descripcion_larga=${fld:tco_descripcion_larga},
	tco_clase_auxiliar=${fld:tco_clase_auxiliar},
	tco_auxiliar=${fld:tco_auxiliar},
	tco_responsable=${fld:tco_responsable},
	tco_tipo_cco=${fld:tco_tipo_cco},
	tco_nivel=${fld:tco_nivel},
	tco_idioma='${def:locale}',
	tco_usuario='${def:user}',
	tco_fecha_registro={d '${def:date}'},
	tco_hora='${def:time}'

WHERE
	smn_auxiliar_centro_costo_id=${fld:id}

