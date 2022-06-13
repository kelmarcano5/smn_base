UPDATE smn_base.smn_tipo_gasto SET
	tig_codigo=${fld:tig_codigo},
	tig_descripcion=${fld:tig_descripcion},
	tig_idioma='${def:locale}',
	tig_usuario='${def:user}',
	tig_fecha_registro={d '${def:date}'},
	tig_hora='${def:time}'

WHERE
	smn_tipo_gasto_id=${fld:id}

