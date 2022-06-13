select 
	smn_base.smn_medio_pago.smn_medio_pago_id as refid 
from 
	smn_base.smn_medio_pago 
where 
	smn_base.smn_medio_pago.smn_medio_pago_id = ${fld:id}
union
select 
	smn_base.smn_franquicias.smn_franquicias_id as refid 
from 
	smn_base.smn_franquicias 
where 
	smn_base.smn_franquicias.smn_franquicias_id = ${fld:id}
