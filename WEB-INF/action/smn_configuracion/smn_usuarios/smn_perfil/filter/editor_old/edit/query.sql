select	
	smn_base.smn_perfil.*,
	smn_seguridad.s_role.description as item
from 
	smn_base.smn_perfil
	inner join smn_seguridad.s_role on smn_seguridad.s_role.role_id = smn_base.smn_perfil.role_id
where 
	smn_perfil_id = ${fld:id}


