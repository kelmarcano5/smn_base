UPDATE smn_base.smn_tipo_registro SET
	trg_codigo=${fld:trg_codigo},
	trg_descripcion=${fld:trg_descripcion},
	trg_idioma='${def:locale}',
	trg_usuario='${def:user}',
	trg_fecha_registro={d '${def:date}'},
	trg_hora='${def:time}'

WHERE
	smn_tipo_registro_id=${fld:id}

