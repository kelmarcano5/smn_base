select smn_base.smn_auxiliar.smn_auxiliar_id as id, 
smn_base.smn_auxiliar.aux_codigo || ' - ' || 
smn_base.smn_auxiliar.aux_descripcion as item,
smn_base.smn_auxiliar.aux_num_doc_oficial as cedula 
from smn_base.smn_auxiliar
where smn_base.smn_auxiliar.smn_clase_auxiliar_rf=${fld:id}