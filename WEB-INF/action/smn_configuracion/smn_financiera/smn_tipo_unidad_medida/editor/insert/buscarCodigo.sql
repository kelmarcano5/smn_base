select
		smn_base.smn_tipo_unidad_medida.tum_codigo
from
		smn_base.smn_tipo_unidad_medida
where
		upper(smn_base.smn_tipo_unidad_medida.tum_codigo) = upper(${fld:tum_codigo})
