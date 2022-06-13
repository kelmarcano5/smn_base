UPDATE smn_base.smn_baremos
SET bar_estatus = (CASE WHEN (bar_estatus = 'A') THEN 'I'
			ELSE 'A'
 END),
 	bar_idioma='${def:locale}',
	bar_usuario='${def:user}',
	bar_fecha_registro={d '${def:date}'},
	bar_hora='${def:time}'
WHERE smn_baremos_id = ${fld:id}