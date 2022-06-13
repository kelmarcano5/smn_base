select
		smn_base.smn_naturaleza_auxiliar.naa_nombre
from
		smn_base.smn_naturaleza_auxiliar
where
		upper(smn_base.smn_naturaleza_auxiliar.naa_nombre) = upper(${fld:naa_nombre})
