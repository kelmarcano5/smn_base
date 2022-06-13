select	
	smn_tipo_variable.smn_tipo_variable_id, 
	smn_tipo_variable.tva_codigo as tva_codigo_pl0,
	smn_base.smn_pregunta.*
from
	smn_base.smn_tipo_variable,
	smn_base.smn_pregunta 
where
	smn_tipo_variable.smn_tipo_variable_id=smn_pregunta.smn_tipo_variable_id and
	smn_pregunta_id = ${fld:id} 
	


