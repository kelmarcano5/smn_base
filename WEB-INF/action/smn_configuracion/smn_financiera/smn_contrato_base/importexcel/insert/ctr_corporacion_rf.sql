select 
	smn_base.smn_corporaciones.smn_corporaciones_id as ctr_corporacion_rf_ref 
from   
	smn_base.smn_corporaciones 
where  
	upper(smn_base.smn_corporaciones.crp_direccion) = upper(${fld:ctr_corporacion_rf_desc})
