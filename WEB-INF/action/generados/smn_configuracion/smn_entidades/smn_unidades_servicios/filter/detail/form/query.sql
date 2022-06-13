select	
	smn_base.smn_areas_servicios.smn_areas_servicios_id, 
	smn_base.smn_areas_servicios.ase_codigo as ase_codigo_pl0,
	smn_base.smn_unidades_servicios.*
from
	smn_base.smn_areas_servicios,
	smn_base.smn_unidades_servicios 
where
	smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_base.smn_unidades_servicios.smn_areas_servicios_id 
 and 
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id = ${fld:id}
