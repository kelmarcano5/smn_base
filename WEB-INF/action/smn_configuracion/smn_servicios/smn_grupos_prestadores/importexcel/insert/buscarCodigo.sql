select
	smn_base.smn_grupos_prestadores.gpp_codigo
from
	smn_base.smn_grupos_prestadores
where
	upper(trim(smn_base.smn_grupos_prestadores.gpp_codigo)) = upper(trim(${fld:gpp_codigo}))
