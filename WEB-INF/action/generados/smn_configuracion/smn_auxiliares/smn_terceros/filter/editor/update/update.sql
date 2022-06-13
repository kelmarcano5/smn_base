UPDATE smn_base.smn_terceros SET
	ter_auxiliar_categoria=${fld:ter_auxiliar_categoria},
	ter_descripcion_corta=${fld:ter_descripcion_corta},
	ter_descripcion_larga=${fld:ter_descripcion_larga},
	ter_idioma='${def:locale}',
	ter_usuario='${def:user}',
	ter_fecha_registro={d '${def:date}'},
	ter_hora='${def:time}'

WHERE
	smn_terceros_id=${fld:id}

