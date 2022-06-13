select
smn_base.smn_ciudades.ciu_nombre_corto,
		smn_base.smn_municipios.smn_municipios_id,
	smn_base.smn_municipios.mun_ciudades,
	smn_base.smn_municipios.mun_codigo,
	smn_base.smn_municipios.mun_nombre_corto,
	smn_base.smn_municipios.mun_nombre_largo,
	smn_base.smn_municipios.mun_fecha_registro
	
from

	smn_base.smn_ciudades,
	smn_base.smn_municipios
where
	smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_municipios.mun_ciudades
