select
		smn_base.smn_municipios.mun_nombre_largo
from
		smn_base.smn_municipios
where
		upper(trim(smn_base.smn_municipios.mun_nombre_largo)) = upper(trim(${fld:mun_nombre_largo}))
