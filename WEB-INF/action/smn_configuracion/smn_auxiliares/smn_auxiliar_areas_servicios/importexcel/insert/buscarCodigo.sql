select
	smn_base.smn_auxiliar_areas_servicios.tse_codigo
from
	smn_base.smn_auxiliar_areas_servicios
where
	upper(trim(smn_base.smn_auxiliar_areas_servicios.tse_codigo)) = upper(trim(${fld:tse_codigo}))
