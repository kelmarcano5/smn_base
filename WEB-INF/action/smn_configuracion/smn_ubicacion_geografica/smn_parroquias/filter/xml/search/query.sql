select
smn_base.smn_municipios.mun_nombre_corto,
		smn_base.smn_parroquias.smn_parroquias_id,
	smn_base.smn_parroquias.prr_municipios,
	smn_base.smn_parroquias.prr_codigo,
	smn_base.smn_parroquias.prr_nombre_corto,
	smn_base.smn_parroquias.prr_nombre_largo,
	smn_base.smn_parroquias.prr_fecha_registro
	
from

	smn_base.smn_municipios,
	smn_base.smn_parroquias
where
	smn_base.smn_municipios.smn_municipios_id = smn_base.smn_parroquias.prr_municipios
