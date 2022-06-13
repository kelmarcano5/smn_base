UPDATE smn_base.smn_perfil SET
	prf_codigo=${fld:prf_codigo},
	prf_descripcion=${fld:prf_descripcion},
	role_id=${fld:role_id},
	prf_tipo_acceso=${fld:prf_tipo_acceso},
	prf_add=${fld:prf_add},
	prf_del=${fld:prf_del},
	prf_edit=${fld:prf_edit},
	prf_view=${fld:prf_view},
	prf_export=${fld:prf_export},
	prf_find=${fld:prf_find},
	prf_import=${fld:prf_import},
	prf_idioma='${def:locale}',
	prf_usuario='${def:user}',
	prf_fecha_registro={d '${def:date}'},
	prf_hora='${def:time}'

WHERE
	smn_perfil_id=${fld:id}

