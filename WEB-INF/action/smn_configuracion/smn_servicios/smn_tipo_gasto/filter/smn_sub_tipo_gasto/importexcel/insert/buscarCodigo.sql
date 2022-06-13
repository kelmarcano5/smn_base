select
		smn_base.smn_sub_tipo_gasto.stg_codigo
from
		smn_base.smn_sub_tipo_gasto
where
		upper(smn_base.smn_sub_tipo_gasto.stg_codigo) = upper(${fld:stg_codigo})
