select
	smn_base.smn_parroquias.prr_nombre_corto,
	${field}
from
	smn_base.smn_parroquias,
	smn_base.smn_zonas_postales
where
	smn_base.smn_parroquias.smn_parroquias_id = smn_base.smn_zonas_postales.zpo_parroquias and
		smn_base.smn_zonas_postales.smn_zonas_postales_id is not null
