select
		smn_base.smn_auxiliar_unidades_servicios.tns_descripcion
from
		smn_base.smn_auxiliar_unidades_servicios
where
		upper(smn_base.smn_auxiliar_unidades_servicios.tns_descripcion) = upper(${fld:tns_descripcion})
