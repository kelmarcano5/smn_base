select
	smn_base.smn_naturaleza_auxiliar.naa_codigo
from
	smn_base.smn_naturaleza_auxiliar
where
	upper(trim(smn_base.smn_naturaleza_auxiliar.naa_codigo)) = upper(trim(${fld:naa_codigo}))
