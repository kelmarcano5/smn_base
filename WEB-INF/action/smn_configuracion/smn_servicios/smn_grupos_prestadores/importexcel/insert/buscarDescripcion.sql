select
	smn_base.smn_grupos_prestadores.gpp_descripcion
from
	smn_base.smn_grupos_prestadores
where
	upper(trim(smn_base.smn_grupos_prestadores.gpp_descripcion)) = upper(trim(${fld:gpp_descripcion}))
