UPDATE smn_base.smn_baremos_detalle_componente SET
	bdc_precio_ml=${fld:prec2},
	bdc_monto_ml=${fld:prec2},
	bdc_precio_ma=${fld:prec2_alt},
	bdc_monto_ma=${fld:prec2_alt}
WHERE
	smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id=${fld:idbd} and smn_base.smn_baremos_detalle_componente.smn_forma_calculo_rf = 'P'