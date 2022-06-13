select
		smn_base.smn_grupos_prestadores.gpp_codigo
from
		smn_base.smn_grupos_prestadores
where
		upper(smn_base.smn_grupos_prestadores.gpp_codigo) = upper(${fld:gpp_codigo})
