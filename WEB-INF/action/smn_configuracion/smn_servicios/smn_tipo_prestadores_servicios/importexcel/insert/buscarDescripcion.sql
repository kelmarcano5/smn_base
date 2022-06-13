select
		smn_base.smn_tipo_prestadores_servicios.tps_descripcion
from
		smn_base.smn_tipo_prestadores_servicios
where
		upper(smn_base.smn_tipo_prestadores_servicios.tps_descripcion) = upper(${fld:tps_descripcion})
