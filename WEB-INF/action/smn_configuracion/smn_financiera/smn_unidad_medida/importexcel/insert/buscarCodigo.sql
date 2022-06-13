select
		smn_base.smn_unidad_medida.unm_codigo
from
		smn_base.smn_unidad_medida
where
		upper(smn_base.smn_unidad_medida.unm_codigo) = upper(${fld:unm_codigo})
