select	
	*
from 
	smn_base.smn_baremos_detalle_componente
	inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_base.smn_baremos_detalle_componente.smn_componente_rf
	inner join smn_base.smn_servicios_componentes on smn_base.smn_servicios_componentes.smn_componentes_id = smn_base.smn_baremos_detalle_componente.smn_componente_rf
	inner join smn_base.smn_baremos_detalle on smn_base.smn_baremos_detalle.smn_servicios_rf = smn_base.smn_servicios_componentes.smn_servicios_id
where 
	smn_baremos_detalle_componente_id = ${fld:id}


