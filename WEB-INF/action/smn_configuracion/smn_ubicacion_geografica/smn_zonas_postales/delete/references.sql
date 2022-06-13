select 
	smn_base.smn_parroquias.smn_parroquias_id as refid 
from 
	smn_base.smn_parroquias 
where 
	smn_base.smn_parroquias.smn_parroquias_id = ${fld:id}
