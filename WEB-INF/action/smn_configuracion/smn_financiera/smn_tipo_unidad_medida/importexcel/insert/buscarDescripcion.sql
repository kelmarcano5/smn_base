select
		smn_base.smn_tipo_unidad_medida.tum_descripcion
from
		smn_base.smn_tipo_unidad_medida
where
		upper(smn_base.smn_tipo_unidad_medida.tum_descripcion) = upper(${fld:tum_descripcion})
