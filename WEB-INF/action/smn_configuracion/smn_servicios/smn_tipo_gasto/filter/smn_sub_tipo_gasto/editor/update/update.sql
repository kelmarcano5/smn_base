UPDATE smn_base.smn_sub_tipo_gasto SET
	stg_codigo=${fld:stg_codigo},
	stg_descripcion=${fld:stg_descripcion},
	smn_tipo_gasto_id=${fld:smn_tipo_gasto_id},
	stg_idioma='${def:locale}',
	stg_usuario='${def:user}',
	stg_fecha_registro={d '${def:date}'},
	stg_hora='${def:time}'

WHERE
	smn_sub_tipo_gasto_id=${fld:id}

