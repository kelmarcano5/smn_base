select
	smn_base.smn_periodos_detalle.pdl_num_periodo as pdl_num_periodo2,
	smn_base.smn_periodos_detalle.pdl_inicio_periodo as pdl_inicio_periodo2,
	smn_base.smn_periodos_detalle.pdl_final_periodo as pdl_final_periodo2,
	smn_base.smn_periodos_detalle.smn_periodos_detalle_id as smn_periodos_detalle_id2,
	smn_base.smn_periodos_detalle.smn_periodos_id as smn_periodos_id2
from 
	smn_base.smn_periodos_detalle
where 
	smn_base.smn_periodos_detalle.smn_periodos_id = ${fld:id}