select
		smn_base.smn_auxiliar_areas_servicios.tse_descripcion
from
		smn_base.smn_auxiliar_areas_servicios
where
		upper(smn_base.smn_auxiliar_areas_servicios.tse_descripcion) = upper(${fld:tse_descripcion})
