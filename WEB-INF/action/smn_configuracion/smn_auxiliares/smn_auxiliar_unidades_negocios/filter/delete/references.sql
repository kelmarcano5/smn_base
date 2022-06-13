select 
	smn_base.smn_direccion.smn_direccion_id as refid 
from 
	smn_base.smn_direccion 
where 
	smn_base.smn_direccion.smn_direccion_id = ${fld:id}
