select smn_base.smn_rel_perfil_rol.role_id as service_id, smn_seguridad.s_role.description as item from smn_base.smn_rel_perfil_rol
left outer join smn_seguridad.s_role on smn_seguridad.s_role.role_id = smn_base.smn_rel_perfil_rol.role_id
WHERE	smn_base.smn_rel_perfil_rol.smn_perfil_id=${fld:id}
