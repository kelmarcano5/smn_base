select
smn_base.smn_ciudades.ciu_nombre_corto,
	smn_base.smn_municipios.*
from
	smn_base.smn_ciudades,
	smn_base.smn_municipios
where
	smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_municipios.mun_ciudades and
	smn_municipios_id = ${fld:id}
