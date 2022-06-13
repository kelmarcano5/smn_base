UPDATE smn_base.smn_contactos SET
	cnt_nombres=${fld:cnt_nombres},
	cnt_apellidos=${fld:cnt_apellidos},
	cnt_email=${fld:cnt_email},
	smn_auxiliar_id=${fld:smn_auxiliar_id},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	smn_tipo_contactos_rf=${fld:smn_tipo_contactos_rf},
	cnt_descripcion=${fld:cnt_descripcion},
	smn_tipo_contactos_rf1=${fld:smn_tipo_contactos_rf1},
	cnt_descripcion1=${fld:cnt_descripcion1},
	cnt_telefono_contacto=${fld:cnt_telefono_contacto},
	cnt_idioma='${def:locale}',
	cnt_usuario='${def:user}',
	cnt_fecha_registro={d '${def:date}'},
	cnt_hora='${def:time}'

WHERE
	smn_contactos_id=${fld:id}

