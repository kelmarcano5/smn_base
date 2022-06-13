UPDATE smn_base.smn_conexiones SET
	con_sistema=${fld:con_sistema},
	con_descripcion=${fld:con_descripcion},
	smn_entidad_rf=${fld:smn_entidad_rf},
	smn_sucursal_rf=${fld:smn_sucursal_rf},
	con_ip_servidor=${fld:con_ip_servidor},
	con_hostname_instancia=${fld:con_hostname_instancia},
	con_nombre_bd=${fld:con_nombre_bd},
	con_usuario_bd=${fld:con_usuario_bd},
	con_clave_bd=${fld:con_clave_bd},
	con_puerto_bd=${fld:con_puerto_bd},
	con_estatus=${fld:con_estatus},
	con_vigencia=${fld:con_vigencia},
	con_idioma='${def:locale}',
	con_usuario='${def:user}',
	con_fecha_registro={d '${def:date}'},
	con_hora='${def:time}'

WHERE
	smn_conexiones_bd_id=${fld:id}

