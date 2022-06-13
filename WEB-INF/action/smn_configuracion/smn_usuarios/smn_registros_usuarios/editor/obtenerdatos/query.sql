select
	smn_base.smn_auxiliar.aux_nombres,
	smn_base.smn_auxiliar.aux_apellidos,
	smn_base.smn_contactos.cnt_email
from
	smn_base.smn_auxiliar
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar.smn_clase_auxiliar_rf
	left outer join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_auxiliar_rf = smn_base.smn_auxiliar.smn_auxiliar_id
	left outer join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf
	inner join smn_base.smn_contactos on smn_base.smn_contactos.smn_auxiliar_id = smn_base.smn_auxiliar.smn_auxiliar_id
where 
	smn_base.smn_auxiliar.aux_num_doc_oficial = '${fld:id}'


