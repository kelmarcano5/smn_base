select
		smn_base.smn_servicios.svc_codigo
from
		smn_base.smn_servicios
where
		upper(smn_base.smn_servicios.svc_codigo) = upper(${fld:svc_codigo})
