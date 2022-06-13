UPDATE smn_base.smn_item SET
	itm_codigo=${fld:itm_codigo},
	itm_nombre=${fld:itm_nombre},
	itm_idioma='${def:locale}',
	itm_usuario='${def:user}',
	itm_fecha_registro={d '${def:date}'},
	itm_hora='${def:time}',
	smn_nivel_estructura_id=${fld:smn_nivel_estructura}

WHERE
	smn_item_id=${fld:id}

