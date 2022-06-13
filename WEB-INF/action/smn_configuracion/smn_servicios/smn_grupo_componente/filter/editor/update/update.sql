UPDATE smn_base.smn_grupo_componente SET
	gco_codigo=${fld:gco_codigo},
	gco_descripcion=${fld:gco_descripcion},
	gco_idioma='${def:locale}',
	gco_usuario='${def:user}',
	gco_fecha_registro={d '${def:date}'},
	gco_hora='${def:time}'

WHERE
	smn_grupo_componente_id=${fld:id}

