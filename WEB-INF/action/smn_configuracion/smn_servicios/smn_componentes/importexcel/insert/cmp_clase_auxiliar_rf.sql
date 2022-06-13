select 
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id as cmp_clase_auxiliar_rf_ref 
from   
	smn_base.smn_clase_auxiliar 
where  
	upper(smn_base.smn_clase_auxiliar.cla_nombre) = upper(${fld:cmp_clase_auxiliar_rf_desc})
