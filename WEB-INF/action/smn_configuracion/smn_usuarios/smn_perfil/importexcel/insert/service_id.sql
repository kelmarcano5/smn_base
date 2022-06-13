select 
	smn_seguridad.s_service.s_service_id as service_id_ref 
from   
	smn_seguridad.s_service 
where  
	upper(description) = upper(${fld:service_id_desc})
