select 
	smn_base.smn_ciudades.smn_ciudades_id as refid 
from 
	smn_base.smn_ciudades 
where 
	smn_base.smn_ciudades.smn_ciudades_id = ${fld:id}
