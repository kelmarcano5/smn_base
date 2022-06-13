UPDATE smn_base.smn_rel_entidad_estructura SET
	smn_entidades_id=${fld:smn_entidades_id},
	smn_configuracion_estructura_id=${fld:smn_configuracion_estructura_id},
	rec_status=${fld:rec_status},
	rec_idioma='${def:locale}',
	rec_usuario='${def:user}',
	rec_fecha_registro={d '${def:date}'},
	rec_hora='${def:time}'

WHERE
	smn_rel_entidad_estructura_id=${fld:id}

