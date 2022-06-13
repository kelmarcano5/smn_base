select
		smn_base.smn_tipo_prestadores_servicios.tps_codigo
from
		smn_base.smn_tipo_prestadores_servicios
where
		upper(smn_base.smn_tipo_prestadores_servicios.tps_codigo) = upper(${fld:tps_codigo})
