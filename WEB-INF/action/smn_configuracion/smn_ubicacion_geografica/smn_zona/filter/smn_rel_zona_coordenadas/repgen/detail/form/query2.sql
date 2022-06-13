select
		smn_base.smn_rel_zona_coordenadas.smn_zona_id,
	smn_base.smn_rel_zona_coordenadas.smn_pais_rf,
	smn_base.smn_rel_zona_coordenadas.smn_entidad_federal_rf,
	smn_base.smn_rel_zona_coordenadas.smn_ciudad_rf,
	smn_base.smn_rel_zona_coordenadas.smn_municipio_rf,
	smn_base.smn_rel_zona_coordenadas.smn_parroquia_rf,
	smn_base.smn_rel_zona_coordenadas.rzc_latitud,
	smn_base.smn_rel_zona_coordenadas.rzc_longitud,
	smn_base.smn_rel_zona_coordenadas.rzc_fecha_registro
from
	smn_base.smn_rel_zona_coordenadas 
where
	smn_base.smn_rel_zona_coordenadas.smn_rel_zona_coordenadas_id = ${fld:id}
