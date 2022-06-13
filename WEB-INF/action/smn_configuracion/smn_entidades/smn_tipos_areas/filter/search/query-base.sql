select
	smn_base.smn_tipos_areas.tar_codigo,
	smn_base.smn_tipos_areas.tar_descripcion,
	smn_base.smn_tipos_areas.tar_fecha_registro,
		smn_base.smn_tipos_areas.smn_tipos_areas_id
	
from
	smn_base.smn_tipos_areas
where
	smn_tipos_areas_id is not null
	${filter}
order by
		smn_tipos_areas_id
