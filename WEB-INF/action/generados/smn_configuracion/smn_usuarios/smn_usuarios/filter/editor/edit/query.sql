select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_usuarios.*
from
	smn_base.smn_entidades,
	smn_base.smn_usuarios 
where
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_usuarios.smn_entidades_id and
	smn_usuarios_id = ${fld:id} 
	


