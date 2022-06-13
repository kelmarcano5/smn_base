select
	smn_base.smn_unidades_servicios.*
from
	smn_base.smn_unidades_servicios,
	smn_base.smn_areas_servicios
where
		smn_base.smn_unidades_servicios.smn_areas_servicios_id=smn_base.smn_areas_servicios.smn_areas_servicios_id and
		smn_base.smn_areas_servicios.smn_areas_servicios_id=${fld:id}
