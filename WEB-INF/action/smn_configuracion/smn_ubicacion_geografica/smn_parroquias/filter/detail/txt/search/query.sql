select
smn_base.smn_municipios.mun_nombre_corto,
	smn_base.smn_parroquias.*
from
	smn_base.smn_municipios,
	smn_base.smn_parroquias
where
	smn_base.smn_municipios.smn_municipios_id = smn_base.smn_parroquias.prr_municipios and
	smn_parroquias_id = ${fld:id}
