select smn_base.smn_tipo_variable.smn_tipo_variable_id as id, 
smn_base.smn_tipo_variable.tva_codigo|| ' - ' || smn_base.smn_tipo_variable.tva_descripcion as item 
from smn_base.smn_tipo_variable