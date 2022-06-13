select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_unidades_negocios.*
from
	smn_base.smn_entidades,
	smn_base.smn_unidades_negocios 
where
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_unidades_negocios.smn_entidades_id and
	smn_unidades_negocios_id = ${fld:id} 
	


