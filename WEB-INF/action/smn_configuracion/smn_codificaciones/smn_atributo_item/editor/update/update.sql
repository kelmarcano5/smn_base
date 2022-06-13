UPDATE smn_base.smn_atributo_item SET
	ati_codigo=${fld:ati_codigo},
	ati_nombre=${fld:ati_nombre},
	ati_fecha_vigencia_desde=${fld:ati_fecha_vigencia_desde},
	ati_fecha_vigencia_hasta=${fld:ati_fecha_vigencia_hasta},
	ati_idioma='${def:locale}',
	ati_usuario='${def:user}',
	ati_fecha_registro={d '${def:date}'},
	ati_hora='${def:time}'

WHERE
	smn_atributo_item_id=${fld:id}

