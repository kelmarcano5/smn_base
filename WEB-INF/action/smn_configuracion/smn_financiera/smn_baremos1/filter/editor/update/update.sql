UPDATE smn_base.smn_baremos SET
	bar_codigo=${fld:bar_codigo},
	bar_descripcion=${fld:bar_descripcion},
	smn_entidades_rf=${fld:smn_entidades_rf},
	smn_sucursales_rf=${fld:smn_sucursales_rf},
	bar_vigencia_desde=${fld:bar_vigencia_desde},
	bar_vigencia_hasta=${fld:bar_vigencia_hasta},
	bar_tipo=${fld:bar_tipo},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	smn_auxiliar_rf=${fld:smn_auxiliar_rf},
	bar_idioma='${def:locale}',
	bar_usuario='${def:user}',
	bar_fecha_registro={d '${def:date}'},
	bar_hora='${def:time}',
	bar_estatus=${fld:bar_estatus},
	smn_moneda_rf=${fld:smn_moneda_rf}

WHERE
	smn_baremos_id=${fld:id}

