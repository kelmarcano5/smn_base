select
	confirma
from
	${schema}s_user
where
	user_id = ${fld:id} and
	confirma is not null