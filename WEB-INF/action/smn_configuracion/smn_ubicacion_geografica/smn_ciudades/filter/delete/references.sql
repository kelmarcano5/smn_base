select 
	smn_base.smn_entidades_federales.smn_entidades_federales_id as refid 
from 
	smn_base.smn_entidades_federales 
where 
	smn_base.smn_entidades_federales.smn_entidades_federales_id = ${fld:id}
