select 
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id as cmp_req_grupo_prestador_ref 
from   
	smn_base.smn_clase_auxiliar 
where  
	upper(smn_base.smn_clase_auxiliar.cla_nombre) = upper(${fld:cmp_req_grupo_prestador_desc})
