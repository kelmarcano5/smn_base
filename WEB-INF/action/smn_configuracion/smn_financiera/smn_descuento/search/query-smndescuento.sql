select
		smn_base.smn_descuento.smn_descuento_id,
	case
	when smn_base.smn_descuento.dct_aplica='C' then '${lbl:b_quantity}'
	when smn_base.smn_descuento.dct_aplica='P' then '${lbl:b_prize}'
	end as dct_aplica_combo,
	smn_base.smn_descuento.dct_codigo,
	smn_base.smn_descuento.dct_nombre,
	smn_base.smn_descuento.dct_porcentaje,
	smn_base.smn_descuento.dct_aplica,
	smn_base.smn_descuento.dct_fecha_registro
	
from
	smn_base.smn_descuento
