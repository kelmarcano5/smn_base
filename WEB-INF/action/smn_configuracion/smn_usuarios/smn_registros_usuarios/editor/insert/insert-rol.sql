insert into smn_seguridad.s_user_role
(
	user_role_id,
	user_id,
	role_id
)
values 
(
	${seq:nextval@smn_seguridad.seq_user_role},
	${seq:currval@smn_seguridad.seq_user},
	${fld:service_id}
)


