UPDATE smn_base.smn_baremos SET
	bar_codigo=${fld:bar_codigo},
	bar_descripcion=${fld:bar_descripcion},
	bar_entidad=${fld:bar_entidad},
	bar_vigencia_desde=${fld:bar_vigencia_desde},
	bar_vigencia_hasta=${fld:bar_vigencia_hasta},
	bar_idioma='${def:locale}',
	bar_usuario='${def:user}',
	bar_fecha_registro={d '${def:date}'},
	bar_hora='${def:time}'

WHERE
	smn_baremos_id=${fld:id}

