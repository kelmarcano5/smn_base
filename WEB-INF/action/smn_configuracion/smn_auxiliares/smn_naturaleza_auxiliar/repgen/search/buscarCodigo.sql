select
		smn_base.smn_naturaleza_auxiliar.naa_codigo
from
		smn_base.smn_naturaleza_auxiliar
where
		upper(smn_base.smn_naturaleza_auxiliar.naa_codigo) = upper(${fld:naa_codigo})
