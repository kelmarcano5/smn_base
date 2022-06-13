select
		smn_base.smn_tipos_areas.tar_codigo
from
		smn_base.smn_tipos_areas
where
		upper(smn_base.smn_tipos_areas.tar_codigo) = upper(${fld:tar_codigo})
