UPDATE smn_base.smn_areas_servicios SET
	smn_tipos_servicios_id=${fld:smn_tipos_servicios_id},
	ase_codigo=${fld:ase_codigo},
	ase_descripcion=${fld:ase_descripcion},
	ase_empresa=${fld:ase_empresa},
	ase_sucursal=${fld:ase_sucursal},
	ase_unidad_negocio=${fld:ase_unidad_negocio},
	ase_idioma='${def:locale}',
	ase_usuario='${def:user}',
	ase_fecha_registro={d '${def:date}'},
	ase_hora='${def:time}'

WHERE
	smn_areas_servicios_id=${fld:id}

