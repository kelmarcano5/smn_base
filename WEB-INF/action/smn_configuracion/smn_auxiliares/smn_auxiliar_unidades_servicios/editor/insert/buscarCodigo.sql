select
		smn_base.smn_auxiliar_unidades_servicios.tns_codigo
from
		smn_base.smn_auxiliar_unidades_servicios
where
		upper(smn_base.smn_auxiliar_unidades_servicios.tns_codigo) = upper(${fld:tns_codigo})
