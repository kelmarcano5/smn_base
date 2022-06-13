select
		smn_base.smn_municipios.mun_codigo
from
		smn_base.smn_municipios
where
		upper(smn_base.smn_municipios.mun_codigo) = upper(${fld:mun_codigo})
