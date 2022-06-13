UPDATE smn_base.smn_unidades_servicios SET
	smn_areas_servicios_id=${fld:smn_areas_servicios_id},
	uns_codigo=${fld:uns_codigo},
	uns_descripcion=${fld:uns_descripcion},
	smn_tipo_unidad_administrativa=${fld:smn_tipo_unidad_administrativa},
	uns_idioma='${def:locale}',
	uns_usuario='${def:user}'
WHERE
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id=${fld:id}

