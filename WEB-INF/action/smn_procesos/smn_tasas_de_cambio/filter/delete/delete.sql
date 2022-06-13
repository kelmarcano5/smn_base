delete from 
	smn_base.smn_tasas_de_cambio 
where 
	smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id = ${fld:id}
and
	${fld:refid} is NULL
