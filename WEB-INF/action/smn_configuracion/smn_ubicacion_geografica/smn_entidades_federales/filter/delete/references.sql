select 
	smn_base.smn_paises.smn_paises_id as refid 
from 
	smn_base.smn_paises 
where 
	smn_base.smn_paises.smn_paises_id = ${fld:id}
