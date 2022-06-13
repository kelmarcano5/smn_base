select
		smn_base.smn_grupos_prestadores.gpp_descripcion
from
		smn_base.smn_grupos_prestadores
where
		upper(smn_base.smn_grupos_prestadores.gpp_descripcion) = upper(${fld:gpp_descripcion})
