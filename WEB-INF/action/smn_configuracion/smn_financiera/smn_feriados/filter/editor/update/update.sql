UPDATE smn_base.smn_feriados SET
	fer_codigo=${fld:fer_codigo},
	fer_descripcion=${fld:fer_descripcion},
	fer_pais=${fld:fer_pais},
	fer_entidad_federal=${fld:fer_entidad_federal},
	fer_ciudad=${fld:fer_ciudad},
	fer_municipio=${fld:fer_municipio},
	fer_feriado=${fld:fer_feriado},
	fer_laborable=${fld:fer_laborable},
	fer_idioma='${def:locale}',
	fer_usuario='${def:user}'
WHERE
	smn_base.smn_feriados.smn_feriados_id=${fld:id}

