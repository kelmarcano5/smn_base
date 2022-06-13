select 
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id as refid 
from 
	smn_base.smn_unidades_negocios 
where 
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id = ${fld:id}
