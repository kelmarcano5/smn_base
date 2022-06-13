delete from 
	smn_base.smn_auxiliar_sucursales 
where 
	smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id = ${fld:id}
and
	${fld:refid} is NULL

