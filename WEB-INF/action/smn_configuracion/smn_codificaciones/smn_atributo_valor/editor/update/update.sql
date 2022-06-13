UPDATE smn_base.smn_atributo_valor SET
	smn_atributo_item_id=${fld:smn_atributo_item_id},
	atv_codigo=${fld:atv_codigo},
	atv_descripcion=${fld:atv_descripcion},
	atv_fecha_vigencia_desde=${fld:atv_fecha_vigencia_desde},
	atv_fecha_vigencia_hasta=${fld:atv_fecha_vigencia_hasta},
	atv_idioma='${def:locale}',
	atv_usuario='${def:user}',
	atv_fecha_registro={d '${def:date}'},
	atv_hora='${def:time}'

WHERE
	smn_atributo_valor_id=${fld:id}

