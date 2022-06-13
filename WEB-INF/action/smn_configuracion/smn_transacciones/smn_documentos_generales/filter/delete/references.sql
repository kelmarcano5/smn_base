select 
	smn_base.smn_modulos.smn_modulos_id as refid 
from 
	smn_base.smn_modulos 
where 
	smn_base.smn_modulos.smn_modulos_id = ${fld:id}

