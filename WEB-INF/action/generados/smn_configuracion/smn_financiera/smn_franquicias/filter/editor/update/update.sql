UPDATE smn_base.smn_franquicias SET
	fra_codigo=${fld:fra_codigo},
	fra_descripcion=${fld:fra_descripcion},
	fra_idioma='${def:locale}',
	fra_usuario='${def:user}',
	fra_fecha_registro={d '${def:date}'},
	fra_hora='${def:time}'

WHERE
	smn_franquicias_id=${fld:id}

