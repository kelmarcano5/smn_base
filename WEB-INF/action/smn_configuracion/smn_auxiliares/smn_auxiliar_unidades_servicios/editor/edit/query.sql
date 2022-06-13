select	
	smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id, 
	smn_base.smn_auxiliar_areas_servicios.tse_codigo as tse_codigo_pl0,
	smn_base.smn_auxiliar_unidades_servicios.*
from
	smn_base.smn_auxiliar_areas_servicios,
	smn_base.smn_auxiliar_unidades_servicios 
where
	smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id=smn_base.smn_auxiliar_unidades_servicios.smn_auxiliar_areas_servicios_id and
	smn_auxiliar_unidades_servicios_id = ${fld:id} 
	


