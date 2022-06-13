delete from 
	smn_base.smn_almacen 
where 
	smn_base.smn_almacen.smn_almacen_id = ${fld:id}
and
	${fld:refid} is NULL

