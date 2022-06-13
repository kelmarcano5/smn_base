select
	smn_base.smn_condicion_pago.smn_condicion_pago_id,
	${field}
from
	smn_base.smn_condicion_pago
where
	smn_base.smn_condicion_pago.smn_condicion_pago_id is not null
and
	smn_base.smn_condicion_pago.cop_idioma = '${def:locale}'
and
	smn_base.smn_condicion_pago.cop_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_condicion_pago.smn_condicion_pago_id desc
	
