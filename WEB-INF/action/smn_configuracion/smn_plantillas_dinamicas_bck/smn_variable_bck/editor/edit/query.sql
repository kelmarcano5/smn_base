select	
	smn_tipo_variable.smn_tipo_variable_id, 
	smn_tipo_variable.tva_codigo as tva_codigo_pl0,
	smn_base.smn_variable.*
from
	smn_base.smn_tipo_variable,
	smn_base.smn_variable 
where
	smn_tipo_variable.smn_tipo_variable_id=smn_variable.smn_tipo_variable_id and
	smn_variable_id = ${fld:id} 
	


