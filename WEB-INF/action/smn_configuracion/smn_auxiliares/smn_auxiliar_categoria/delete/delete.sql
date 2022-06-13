delete from 
	smn_base.smn_auxiliar_categoria 
where 
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id = ${fld:id}
and
	${fld:refid} is NULL
