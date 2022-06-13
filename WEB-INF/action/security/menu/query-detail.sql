select distinct
	st.set_servicio as description,
	--s.description,
	s.path,
	m.position
from
	${schema}s_menu_item m,
	${schema}s_service_role sr,
	${schema}s_user u,
	${schema}s_user_role ur,
	${schema}s_service s,
	smn_base.smn_servicio_traduccion st 
where
	u.userlogin = '${def:user}'
and 
	m.menu_id = ${fld:menu_id}
and
	s.service_id = m.service_id
and
	sr.service_id = s.service_id
and
	ur.role_id = sr.role_id
and
	ur.user_id = u.user_id
and
	st.set_servicio_id = s.service_id
and
	st.set_idioma = '${def:locale}'
order by 
	m.position
