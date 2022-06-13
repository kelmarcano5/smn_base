select
	smn_base.smn_tipo_gasto.smn_tipo_gasto_id,
	smn_base.smn_tipo_gasto.tig_codigo as tig_codigo_pl2,
	smn_base.smn_sub_tipo_gasto.stg_codigo,
	smn_base.smn_sub_tipo_gasto.stg_descripcion,
	smn_base.smn_sub_tipo_gasto.smn_tipo_gasto_id,
	smn_base.smn_sub_tipo_gasto.stg_fecha_registro,
		smn_base.smn_sub_tipo_gasto.smn_sub_tipo_gasto_id
	
from
	smn_base.smn_tipo_gasto,
	smn_base.smn_sub_tipo_gasto
where
	smn_sub_tipo_gasto_id is not null
	and 	smn_base.smn_tipo_gasto.smn_tipo_gasto_id=smn_base.smn_sub_tipo_gasto.smn_tipo_gasto_id
	${filter}
order by
		smn_sub_tipo_gasto_id
