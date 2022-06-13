select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_modulos.*
from
	smn_base.smn_entidades,
	smn_base.smn_modulos 
where
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_modulos.smn_entidades_id and
	smn_modulos_id = ${fld:id} 
	


