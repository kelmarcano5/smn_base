select distinct
	mt.mnt_title as title,
	--m.title,
	m.menu_id,
	m.position,
	m.master_menu_id
from
	${schema}s_menu m,
	${schema}s_menu_role mr,
	${schema}s_user u,
	${schema}s_user_role ur,
	${schema}s_application a,
	${schema}s_role r,
	smn_base.smn_menu_traduccion mt 
where
	a.app_alias = '${req:dinamica.security.application}'
and
	u.userlogin = '${def:user}'
and
	r.app_id = a.app_id
and
	ur.role_id = r.role_id
and
	ur.user_id = u.user_id
and
	mr.role_id = ur.role_id
and
	m.menu_id = mr.menu_id
and
	m.master_menu_id = ${fld:menu_id}
and
	mt.mnt_menu_id = m.menu_id
and
	mt.mnt_idioma = '${def:locale}'
order by 
	m.position
