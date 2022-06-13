UPDATE smn_base.smn_tipos_servicios SET
	tsr_codigo=${fld:tsr_codigo},
	tsr_descripcion=${fld:tsr_descripcion},
	tsr_idioma='${def:locale}',
	tsr_usuario='${def:user}',
	tsr_servicio_afiliacion=${fld:tsr_servicio_afiliacion}
WHERE
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id=${fld:id}

