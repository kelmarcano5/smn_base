select
		smn_base.smn_descuento.dct_codigo,
	smn_base.smn_descuento.dct_nombre,
	smn_base.smn_descuento.dct_porcentaje,
	smn_base.smn_descuento.dct_aplica,
	smn_base.smn_descuento.dct_fecha_registro
from
	smn_base.smn_descuento 
where
	smn_base.smn_descuento.smn_descuento_id = ${fld:id}
