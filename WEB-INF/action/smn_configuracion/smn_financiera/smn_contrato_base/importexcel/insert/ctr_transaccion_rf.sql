select 
	smn_base.smn_transaccion_general.smn_transaccion_general_id as ctr_transaccion_rf_ref 
from   
	smn_base.smn_transaccion_general 
where  
	upper(smn_base.smn_transaccion_general.trg_descripcion) = upper(${fld:ctr_transaccion_rf_desc})
