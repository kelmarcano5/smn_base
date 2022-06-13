select
		smn_base.smn_municipios.mun_nombre_largo
from
		smn_base.smn_municipios
where
		upper(smn_base.smn_municipios.mun_nombre_largo) = upper(${fld:mun_nombre_largo})
