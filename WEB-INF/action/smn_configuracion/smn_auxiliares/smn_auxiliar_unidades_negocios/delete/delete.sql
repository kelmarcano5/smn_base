delete from 
	smn_base.smn_auxiliar_unidades_negocios 
where 
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id = ${fld:id}
and
	${fld:refid} is NULL
