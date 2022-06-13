INSERT INTO smn_base.smn_rel_servicio_area_unidad
(
	smn_rel_servicio_area_unidad_id,
	smn_servicios_id,
	smn_areas_servicios_rf,
	smn_unidades_servicios_rf,
	smn_centro_costo_rf,
	rsa_idioma,
	rsa_usuario,
	rsa_fecha_registro,
	rsa_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_servicio_area_unidad},
	${fld:smn_servicios_id},
	${fld:smn_areas_servicios_rf},
	${fld:smn_unidades_servicios_rf},
	${fld:smn_centro_costo_rf},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
