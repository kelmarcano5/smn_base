select 
	smn_base.smn_entidades_federales.smn_entidades_federales_id as id, 
	smn_base.smn_entidades_federales.efe_codigo || ' - ' || 
	smn_base.smn_entidades_federales.efe_nombre_corto as item 
from 
	smn_base.smn_entidades_federales
where
	(smn_base.smn_entidades_federales.efe_paises = ${fld:country})
or 
	(${fld:country} is NULL)
order by 
	smn_base.smn_entidades_federales.efe_nombre_corto