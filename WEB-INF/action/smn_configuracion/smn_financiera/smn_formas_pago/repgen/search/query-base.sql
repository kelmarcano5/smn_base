select
	smn_base.smn_formas_pago.smn_formas_pago_id,
	${field}
from
	smn_base.smn_formas_pago
	left outer join smn_base.smn_franquicias on smn_base.smn_franquicias.smn_franquicias_id = smn_base.smn_formas_pago.fop_franquicia
	inner join smn_base.smn_medio_pago on smn_base.smn_medio_pago.smn_medio_pago_id = smn_base.smn_formas_pago.fop_medio_pago
where
	smn_base.smn_formas_pago.smn_formas_pago_id is not null
and
	smn_base.smn_formas_pago.fop_idioma = '${def:locale}'
and
	smn_base.smn_formas_pago.fop_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_formas_pago.smn_formas_pago_id desc
	
