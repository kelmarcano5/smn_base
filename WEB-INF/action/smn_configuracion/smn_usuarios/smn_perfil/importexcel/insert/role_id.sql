select 
	smn_seguridad.s_role.s_role_id as role_id_ref 
from   
	smn_seguridad.s_role 
where  
	upper(smn_seguridad.s_role.description) = upper(${fld:role_id_desc})
