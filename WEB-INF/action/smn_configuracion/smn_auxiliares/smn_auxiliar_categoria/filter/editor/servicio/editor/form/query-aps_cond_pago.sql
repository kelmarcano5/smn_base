select smn_base.smn_condicion_pago.smn_condicion_pago_id as id, smn_base.smn_condicion_pago.cop_codigo || ' - ' || smn_base.smn_condicion_pago.cop_descripcion as item from smn_base.smn_condicion_pago order by smn_base.smn_condicion_pago.cop_descripcion