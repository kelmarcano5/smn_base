INSERT INTO smn_base.smn_areas_servicios
(
	smn_areas_servicios_id,
	smn_tipos_areas_id,
	ase_codigo,
	ase_descripcion,
	ase_empresa,
	ase_sucursal,
	ase_unidad_negocio,
	ase_fecha_registro
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
	{d '${def:date}'}
)
