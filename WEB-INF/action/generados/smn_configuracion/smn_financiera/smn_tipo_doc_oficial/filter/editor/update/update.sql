UPDATE smn_base.smn_tipo_doc_oficial SET
	tdo_codigo=${fld:tdo_codigo},
	tdo_descripcion=${fld:tdo_descripcion},
	tdo_idioma='${def:locale}',
	tdo_usuario='${def:user}',
	tdo_fecha_registro={d '${def:date}'},
	tdo_hora='${def:time}'

WHERE
	smn_tipo_doc_oficial_id=${fld:id}

