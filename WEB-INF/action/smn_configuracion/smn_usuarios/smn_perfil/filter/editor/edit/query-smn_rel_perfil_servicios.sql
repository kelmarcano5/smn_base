select smn_seguridad.s_service.service_id as service_id, smn_seguridad.s_service.description as item 
from smn_base.smn_rel_perfil_servicios
left outer join smn_seguridad.s_service on smn_seguridad.s_service.service_id = smn_base.smn_rel_perfil_servicios.service_id
left outer join smn_base.smn_perfil on smn_base.smn_perfil.smn_perfil_id = smn_base.smn_rel_perfil_servicios.smn_perfil_id
where 
smn_base.smn_rel_perfil_servicios.smn_perfil_id=${fld:id}