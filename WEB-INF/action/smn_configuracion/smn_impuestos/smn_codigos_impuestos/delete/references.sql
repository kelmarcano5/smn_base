select 
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id as refid 
from 
	smn_base.smn_unidades_impositivas 
where 
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id = ${fld:id}
