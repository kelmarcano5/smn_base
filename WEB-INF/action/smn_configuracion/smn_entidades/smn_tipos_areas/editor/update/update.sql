UPDATE smn_base.smn_tipos_areas SET
	tar_codigo=${fld:tar_codigo},
	tar_descripcion=${fld:tar_descripcion},
	tar_idioma='${def:locale}',
	tar_usuario={d '${def:date}'},
	tar_fecha_registro={d '${def:date}'},
	tar_hora='${def:time}'

WHERE
	smn_tipos_areas_id=${fld:id}

