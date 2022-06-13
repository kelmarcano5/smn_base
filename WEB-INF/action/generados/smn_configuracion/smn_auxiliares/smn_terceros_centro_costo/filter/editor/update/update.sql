UPDATE smn_base.smn_terceros_centro_costo SET
	smn_terceros_id=${fld:smn_terceros_id},
	trc_codigo=${fld:trc_codigo},
	trc_descripcion_corta=${fld:trc_descripcion_corta},
	trc_descripcion_larga=${fld:trc_descripcion_larga},
	trc_responsable=${fld:trc_responsable},
	trc_tipo_cco=${fld:trc_tipo_cco},
	trc_nivel=${fld:trc_nivel},
	trc_clase_auxiliar=${fld:trc_clase_auxiliar},
	trc_auxiliar=${fld:trc_auxiliar},
	trc_idioma='${def:locale}',
	trc_usuario='${def:user}',
	trc_fecha_registro={d '${def:date}'},
	trc_hora='${def:time}'

WHERE
	smn_terceros_centro_costo_id=${fld:id}

