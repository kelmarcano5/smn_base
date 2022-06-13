select
		smn_base.smn_servicios.svc_descripcion
from
		smn_base.smn_servicios
where
		upper(smn_base.smn_servicios.svc_descripcion) = upper(${fld:svc_descripcion})
