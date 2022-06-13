select
	smn_base.smn_condicion_pago.cop_codigo,
	smn_base.smn_condicion_pago.cop_descripcion,
	smn_base.smn_condicion_pago.cop_cantidad_dias,
	smn_base.smn_condicion_pago.cop_fecha_registro,
	smn_base.smn_condicion_pago.smn_condicion_pago_id	
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