select 
	smn_base.smn_componentes.smn_componentes_id as id, smn_base.smn_componentes.cmp_codigo ||' - '|| smn_base.smn_componentes.cmp_descripcion as item
from smn_base.smn_componentes 
  inner join smn_base.smn_servicios_componentes on smn_base.smn_servicios_componentes.smn_componentes_id = smn_base.smn_componentes.smn_componentes_id
	inner join smn_base.smn_baremos_detalle on smn_base.smn_baremos_detalle.smn_servicios_rf = smn_base.smn_servicios_componentes.smn_servicios_id
where
	smn_base.smn_baremos_detalle.smn_servicios_rf=${fld:id}