select 
	smn_base.smn_municipios.smn_municipios_id as refid 
from 
	smn_base.smn_municipios 
where 
	smn_base.smn_municipios.smn_municipios_id = ${fld:id}
