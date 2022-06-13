select
		smn_base.smn_sub_tipo_gasto.stg_codigo,
	smn_base.smn_sub_tipo_gasto.stg_descripcion,
	smn_base.smn_sub_tipo_gasto.smn_tipo_gasto_id,
	smn_base.smn_sub_tipo_gasto.stg_fecha_registro
from
	smn_base.smn_sub_tipo_gasto 
where
	smn_base.smn_sub_tipo_gasto.smn_sub_tipo_gasto_id = ${fld:id}
