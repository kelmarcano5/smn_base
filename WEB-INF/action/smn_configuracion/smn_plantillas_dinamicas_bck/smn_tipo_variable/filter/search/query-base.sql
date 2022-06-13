select
	case
	when smn_tipo_variable.tva_estatus='AC' then '${lbl:b_active}'
	when smn_tipo_variable.tva_estatus='IN' then '${lbl:b_inactive}'
	end as tva_estatus_combo,
	smn_tipo_variable.tva_codigo,
	smn_tipo_variable.tva_descripcion,
	smn_tipo_variable.tva_estatus,
	smn_tipo_variable.tva_idioma,
	smn_tipo_variable.tva_usuario,
	smn_tipo_variable.tva_fecha_registro,
	smn_tipo_variable.tva_hora,
	smn_tipo_variable.smn_tipo_variable_id
	
from
	smn_base.smn_tipo_variable
where
	smn_base.smn_tipo_variable.smn_tipo_variable_id is not null
	${filter}
order by
		smn_base.smn_tipo_variable.smn_tipo_variable_id
