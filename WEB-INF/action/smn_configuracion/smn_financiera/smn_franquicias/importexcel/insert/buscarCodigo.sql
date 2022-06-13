select
	smn_base.smn_franquicias.fra_codigo
from
	smn_base.smn_franquicias
where
	upper(trim(smn_base.smn_franquicias.fra_codigo)) = upper(trim(${fld:fra_codigo}))
