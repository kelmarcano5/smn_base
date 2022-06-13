select
		smn_base.smn_tipo_variable.smn_tipo_variable_id,
	case
	when smn_tipo_variable.tva_estatus='AC' then '${lbl:b_active}'
	when smn_tipo_variable.tva_estatus='IN' then '${lbl:b_inactive}'
	end as tva_estatus_combo,
	smn_tipo_variable.tva_codigo,
	smn_tipo_variable.tva_descripcion,
	smn_tipo_variable.tva_estatus,
	smn_tipo_variable.tva_fecha_registro
	
from
	smn_tipo_variable
