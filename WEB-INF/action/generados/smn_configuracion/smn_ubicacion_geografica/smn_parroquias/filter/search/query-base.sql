select	
	smn_base.smn_parroquias.prr_municipios,
	smn_base.smn_parroquias.prr_codigo,
	smn_base.smn_parroquias.prr_nombre_corto,
	smn_base.smn_parroquias.prr_nombre_largo,
	smn_base.smn_parroquias.prr_fecha_registro,
	smn_base.smn_parroquias.smn_parroquias_id

from
	smn_base.smn_parroquias
where
	smn_parroquias_id is not null	
 	 	${filter}
order by 
	smn_parroquias_id