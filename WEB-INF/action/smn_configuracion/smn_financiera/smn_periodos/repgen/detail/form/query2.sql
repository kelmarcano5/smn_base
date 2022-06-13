select
		smn_base.smn_periodos.prd_codigo,
	smn_base.smn_periodos.prd_descripcion,
	smn_base.smn_periodos.prd_fecha_registro
from
	smn_base.smn_periodos 
where
	smn_base.smn_periodos.smn_periodos_id = ${fld:id}
