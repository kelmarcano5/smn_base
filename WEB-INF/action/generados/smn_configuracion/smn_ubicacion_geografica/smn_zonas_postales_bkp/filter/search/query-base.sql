select	
	smn_base.smn_zonas_postales.zpo_ciudades,
	smn_base.smn_zonas_postales.zpo_codigo,
	smn_base.smn_zonas_postales.zpo_fecha_registro,
	smn_base.smn_zonas_postales.smn_zonas_postales_id

from
	smn_base.smn_zonas_postales
where
	smn_zonas_postales_id is not null	
 	 	${filter}
order by 
	smn_zonas_postales_id