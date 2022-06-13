delete from 
	smn_base.smn_sucursales 
where 
	smn_base.smn_sucursales.smn_sucursales_id = ${fld:id}
and
	${fld:refid} is NULL

