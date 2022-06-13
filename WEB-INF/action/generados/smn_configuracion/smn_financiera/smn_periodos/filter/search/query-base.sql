select	
	smn_base.smn_periodos.prd_codigo,
	smn_base.smn_periodos.prd_descripcion,
	smn_base.smn_periodos.prd_fecha_registro,
	smn_base.smn_periodos.smn_periodos_id

from
	smn_base.smn_periodos
where
	smn_periodos_id is not null	
 	 	${filter}
order by 
	smn_periodos_id