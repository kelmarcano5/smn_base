select	
	smn_base.smn_condicion_pago.cop_codigo,
	smn_base.smn_condicion_pago.cop_descripcion,
	smn_base.smn_condicion_pago.cop_fecha_registro,
	smn_base.smn_condicion_pago.smn_condicion_pago_id

from
	smn_base.smn_condicion_pago
where
	smn_condicion_pago_id is not null	
 	 	${filter}
order by 
	smn_condicion_pago_id