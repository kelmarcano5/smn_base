select
	smn_base.smn_naturaleza_auxiliar.naa_nombre
from
	smn_base.smn_naturaleza_auxiliar
where
	upper(trim(smn_base.smn_naturaleza_auxiliar.naa_nombre)) = upper(trim(${fld:naa_nombre}))
