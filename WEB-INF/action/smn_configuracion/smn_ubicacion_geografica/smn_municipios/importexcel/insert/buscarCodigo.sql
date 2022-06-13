select
		smn_base.smn_municipios.mun_codigo
from
		smn_base.smn_municipios
where
		upper(trim(smn_base.smn_municipios.mun_codigo)) = upper(trim(${fld:mun_codigo}))
