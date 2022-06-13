update ${schema}s_user set 
	enabled = 1, 
	confirma = 1 
where 
	user_id = ${fld:id}
