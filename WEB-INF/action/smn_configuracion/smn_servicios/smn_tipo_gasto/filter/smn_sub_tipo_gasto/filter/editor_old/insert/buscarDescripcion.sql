select
		smn_base.smn_sub_tipo_gasto.stg_descripcion
from
		smn_base.smn_sub_tipo_gasto
where
		upper(smn_base.smn_sub_tipo_gasto.stg_descripcion) = upper(${fld:stg_descripcion})
