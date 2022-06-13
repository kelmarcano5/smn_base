
select
	smn_base.smn_areas_servicios.*
from
	smn_base.smn_areas_servicios,
	smn_base.smn_tipos_areas
where
		smn_base.smn_areas_servicios.smn_tipos_areas_id=smn_base.smn_tipos_areas.smn_tipos_areas_id and
		smn_base.smn_tipos_areas.smn_tipos_areas_id=${fld:id}
