INSERT INTO smn_base.smn_rel_servicio_area_unidad
(
	smn_rel_servicio_area_unidad_id,
	smn_servicios_id,
	smn_areas_servicios_rf,
	smn_unidades_servicios_rf,
	smn_centro_costo_rf,
	rsa_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_servicio_area_unidad},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
