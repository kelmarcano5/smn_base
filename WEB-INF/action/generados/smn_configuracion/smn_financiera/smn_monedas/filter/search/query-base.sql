select	
	smn_base.smn_monedas.mon_codigo,
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_monedas.mon_fecha_registro,
	smn_base.smn_monedas.smn_monedas_id

from
	smn_base.smn_monedas
where
	smn_monedas_id is not null	
 	 	${filter}
order by 
	smn_monedas_id