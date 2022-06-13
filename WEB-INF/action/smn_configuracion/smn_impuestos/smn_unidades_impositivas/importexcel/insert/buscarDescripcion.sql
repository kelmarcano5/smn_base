select
		smn_base.smn_unidades_impositivas.uim_descripcion
from
		smn_base.smn_unidades_impositivas
where
		upper(smn_base.smn_unidades_impositivas.uim_descripcion) = upper(${fld:uim_descripcion})
