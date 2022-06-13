select
		smn_base.smn_auxiliar_areas_servicios.tse_codigo
from
		smn_base.smn_auxiliar_areas_servicios
where
		upper(smn_base.smn_auxiliar_areas_servicios.tse_codigo) = upper(${fld:tse_codigo})
