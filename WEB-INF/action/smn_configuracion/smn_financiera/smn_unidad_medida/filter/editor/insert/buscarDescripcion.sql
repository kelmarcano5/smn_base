select
		smn_base.smn_unidad_medida.unm_descripcion
from
		smn_base.smn_unidad_medida
where
		upper(smn_base.smn_unidad_medida.unm_descripcion) = upper(${fld:unm_descripcion})
