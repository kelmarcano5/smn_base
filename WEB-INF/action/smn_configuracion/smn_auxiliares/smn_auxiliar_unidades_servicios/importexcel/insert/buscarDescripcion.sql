select
	smn_base.smn_auxiliar_unidades_servicios.tns_descripcion
from
	smn_base.smn_auxiliar_unidades_servicios
where
	upper(trim(smn_base.smn_auxiliar_unidades_servicios.tns_descripcion)) = upper(trim(${fld:tns_descripcion}))
