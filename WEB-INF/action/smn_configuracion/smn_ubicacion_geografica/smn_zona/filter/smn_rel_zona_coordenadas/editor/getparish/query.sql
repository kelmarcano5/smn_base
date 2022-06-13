select
	smn_base.smn_parroquias.smn_parroquias_id as id,
	smn_base.smn_parroquias.prr_nombre_corto as item 
from
	smn_base.smn_parroquias
where
	smn_base.smn_parroquias.prr_municipios=${fld:id}