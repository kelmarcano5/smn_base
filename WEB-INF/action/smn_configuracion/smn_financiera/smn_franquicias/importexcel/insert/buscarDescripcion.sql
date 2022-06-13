select
	smn_base.smn_franquicias.fra_descripcion
from
	smn_base.smn_franquicias
where
	upper(trim(smn_base.smn_franquicias.fra_descripcion)) = upper(trim(${fld:fra_descripcion}))
