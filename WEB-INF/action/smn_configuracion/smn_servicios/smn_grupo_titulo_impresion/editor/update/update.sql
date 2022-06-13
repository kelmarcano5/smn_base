UPDATE smn_base.smn_grupo_titulo_impresion SET
	gti_codigo=${fld:gti_codigo},
	gti_descripcion=${fld:gti_descripcion},
	gti_estatus=${fld:gti_estatus},
	gti_fecha_vigencia=${fld:gti_fecha_vigencia},
	gti_idioma='${def:locale}',
	gti_usuario='${def:user}',
	gti_fecha_registro={d '${def:date}'},
	gti_hora='${def:time}',
	gti_orden=${fld:gti_orden}

WHERE
	smn_grupo_titulo_impresion_id=${fld:id}

