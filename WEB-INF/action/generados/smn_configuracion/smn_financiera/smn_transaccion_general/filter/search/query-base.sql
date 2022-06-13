select	
	smn_base.smn_transaccion_general.trg_codigo,
	smn_base.smn_transaccion_general.trg_descripcion,
	smn_base.smn_transaccion_general.trg_modulo_origen,
	smn_base.smn_transaccion_general.trg_fecha_registro,
	smn_base.smn_transaccion_general.smn_transaccion_general_id

from
	smn_base.smn_transaccion_general
where
	smn_transaccion_general_id is not null	
 	 	${filter}
order by 
	smn_transaccion_general_id