select
		smn_base.smn_tipos_areas.tar_descripcion
from
		smn_base.smn_tipos_areas
where
		upper(smn_base.smn_tipos_areas.tar_descripcion) = upper(${fld:tar_descripcion})
