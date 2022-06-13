select
		smn_base.smn_nivel_aprobacion.nap_codigo
from
		smn_base.smn_nivel_aprobacion
where
		upper(smn_base.smn_nivel_aprobacion.nap_codigo) = upper(${fld:nap_codigo})
