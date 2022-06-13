select
		smn_base.smn_unidades_impositivas.uim_codigo
from
		smn_base.smn_unidades_impositivas
where
		upper(smn_base.smn_unidades_impositivas.uim_codigo) = upper(${fld:uim_codigo})
