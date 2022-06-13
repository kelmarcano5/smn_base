select
	smn_base.smn_auxiliar_areas_servicios.tse_descripcion
from
	smn_base.smn_auxiliar_areas_servicios
where
	upper(trim(smn_base.smn_auxiliar_areas_servicios.tse_descripcion)) = upper(trim(${fld:tse_descripcion}))
