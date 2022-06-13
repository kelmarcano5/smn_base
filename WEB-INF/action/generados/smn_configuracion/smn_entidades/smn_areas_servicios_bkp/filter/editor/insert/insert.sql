INSERT INTO smn_base.smn_areas_servicios
(
	smn_areas_servicios_id,
	smn_tipos_servicios_id,
	ase_codigo,
	ase_descripcion,
	ase_centro_costo,
	ase_idioma,
	ase_usuario,
	ase_fecha_registro,
	ase_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_areas_servicios},
	${fld:smn_tipos_servicios_id},
	${fld:ase_codigo},
	${fld:ase_descripcion},
	${fld:ase_centro_costo},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
