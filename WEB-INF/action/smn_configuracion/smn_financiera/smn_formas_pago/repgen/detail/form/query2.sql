select
		smn_base.smn_formas_pago.fop_codigo,
	smn_base.smn_formas_pago.fop_descripcion,
	smn_base.smn_formas_pago.fop_medio_pago,
	smn_base.smn_formas_pago.fop_requiere_banco,
	smn_base.smn_formas_pago.fop_franquicia,
	smn_base.smn_formas_pago.fop_fecha_registro
from
	smn_base.smn_formas_pago 
where
	smn_base.smn_formas_pago.smn_formas_pago_id = ${fld:id}
