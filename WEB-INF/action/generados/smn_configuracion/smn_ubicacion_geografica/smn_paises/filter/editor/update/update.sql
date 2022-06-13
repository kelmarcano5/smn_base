UPDATE smn_base.smn_paises SET
	pai_codigo=${fld:pai_codigo},
	pai_nombre_corto=${fld:pai_nombre_corto},
	pai_nombre_largo=${fld:pai_nombre_largo},
	pai_gentilicio=${fld:pai_gentilicio},
	pai_codigo_ddi=${fld:pai_codigo_ddi},
	pai_idioma_oficial=${fld:pai_idioma_oficial},
	pai_moneda_oficial=${fld:pai_moneda_oficial},
	pai_idioma='${def:locale}',
	pai_usuario='${def:user}',
	pai_fecha_registro={d '${def:date}'},
	pai_hora='${def:time}'

WHERE
	smn_paises_id=${fld:id}

