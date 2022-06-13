UPDATE smn_base.smn_diccionario SET
	dic_codigo=${fld:dic_codigo},
	dic_descripcion=${fld:dic_descripcion},
	dic_esquema=${fld:dic_esquema},
	dic_tabla=${fld:dic_tabla},
	dic_campo=${fld:dic_campo},
	dic_tipo_dato=${fld:dic_tipo_dato},
	dic_tamano=${fld:dic_tamano},
	dic_posicion_inicial=${fld:dic_posicion_inicial},
	dic_posicion_final=${fld:dic_posicion_final},
	dic_ruta=${fld:dic_ruta},
	dic_observacion=${fld:dic_observacion},
	dic_estatus=${fld:dic_estatus},
	dic_fecha_estatus=${fld:dic_fecha_estatus},
	dic_idioma='${def:locale}',
	dic_usuario_id='${def:user}',
	dic_fecha_registro={d '${def:date}'},
	dic_hora='${def:time}'

WHERE
	smn_diccionario_id=${fld:id}

