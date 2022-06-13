UPDATE smn_base.smn_centro_costo SET
	smn_entidades_id=${fld:smn_entidades_id},
	cco_codigo=${fld:cco_codigo},
	cco_descripcion_corta=${fld:cco_descripcion_corta},
	cco_descripcion_larga=${fld:cco_descripcion_larga},
	cco_responsable=${fld:cco_responsable},
	cco_tipo_cco=${fld:cco_tipo_cco},
	cco_nivel=${fld:cco_nivel},
	cco_clase_auxiliar=${fld:cco_clase_auxiliar},
	cco_auxiliar=${fld:cco_auxiliar},
	cco_idioma='${def:locale}',
	cco_usuario='${def:user}',
	cco_fecha_registro={d '${def:date}'},
	cco_hora='${def:time}'

WHERE
	smn_centro_costo_id=${fld:id}

