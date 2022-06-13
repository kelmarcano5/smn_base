select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_centro_costo.*
from
	smn_base.smn_entidades,
	smn_base.smn_centro_costo 
where
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_centro_costo.smn_entidades_id and
	smn_centro_costo_id = ${fld:id} 
	


