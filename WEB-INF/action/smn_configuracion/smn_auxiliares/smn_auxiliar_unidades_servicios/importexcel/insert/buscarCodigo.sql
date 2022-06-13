select
	smn_base.smn_auxiliar_unidades_servicios.tns_codigo
from
	smn_base.smn_auxiliar_unidades_servicios
where
	upper(trim(smn_base.smn_auxiliar_unidades_servicios.tns_codigo)) = upper(trim(${fld:tns_codigo}))
