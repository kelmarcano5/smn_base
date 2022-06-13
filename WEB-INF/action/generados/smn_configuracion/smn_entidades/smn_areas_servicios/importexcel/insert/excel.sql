INSERT INTO smn_base.smn_areas_servicios
(
	smn_areas_servicios_id,
	smn_tipos_servicios_id,
	ase_codigo,
	ase_descripcion,
	ase_empresa,
	ase_sucursal,
	ase_unidad_negocio,
	ase_idioma,
	ase_usuario,
	ase_fecha_registro,
	ase_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_areas_servicios},
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
