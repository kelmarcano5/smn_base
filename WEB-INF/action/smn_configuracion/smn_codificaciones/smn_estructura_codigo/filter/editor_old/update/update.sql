UPDATE smn_base.smn_estructura_codigo SET
	smn_modulos_id=${fld:smn_modulos_id},
	eco_codigo=${fld:eco_codigo},
	eco_nombre=${fld:eco_nombre},
	eco_niveles=${fld:eco_niveles},
	eco_mascara=${fld:eco_mascara},
	eco_separador=${fld:eco_separador},
	eco_idioma='${def:locale}',
	eco_usuario='${def:user}',
	eco_fecha_registro={d '${def:date}'},
	eco_hora='${def:time}'

WHERE
	smn_estructura_codigo_id=${fld:id}

