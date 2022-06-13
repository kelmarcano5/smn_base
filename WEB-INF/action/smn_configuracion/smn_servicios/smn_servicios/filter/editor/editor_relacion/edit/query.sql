select	
	smn_base.smn_servicios.smn_servicios_id, 
	smn_base.smn_servicios.svc_codigo as svc_codigo_pl0,
	smn_base.smn_rel_servicio_area_unidad.*
from
	smn_base.smn_servicios,
	smn_base.smn_rel_servicio_area_unidad 
where
	smn_base.smn_servicios.smn_servicios_id=smn_base.smn_rel_servicio_area_unidad.smn_servicios_id and
	smn_rel_servicio_area_unidad_id = ${fld:id} 
	


