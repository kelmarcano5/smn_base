UPDATE smn_base.smn_plantilla_detalle SET
	smn_plantilla_cabecera_id=${fld:smn_plantilla_cabecera_id},
	smn_seccion_rf=${fld:smn_seccion_rf},
	pde_sec_seccion=${fld:pde_sec_seccion},
	smn_pregunta_rf=${fld:smn_pregunta_rf},
	pde_sec_pregunta=${fld:pde_sec_pregunta},
	pde_status=${fld:pde_status},
	pde_idioma='${def:locale}',
	pde_usuario='${def:user}',
	pde_fecha_registro={d '${def:date}'},
	pde_hora='${def:time}'

WHERE
	smn_plantilla_detalle_id=${fld:id}

