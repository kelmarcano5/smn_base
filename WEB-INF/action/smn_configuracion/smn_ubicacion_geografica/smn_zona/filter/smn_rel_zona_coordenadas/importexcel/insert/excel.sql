INSERT INTO smn_base.smn_rel_zona_coordenadas
(
	smn_rel_zona_coordenadas_id,
	smn_zona_id,
	smn_pais_rf,
	smn_entidad_federal_rf,
	smn_ciudad_rf,
	smn_municipio_rf,
	smn_parroquia_rf,
	rzc_latitud,
	rzc_longitud,
	rzc_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_zona_coordenadas},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
