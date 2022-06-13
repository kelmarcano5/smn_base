select smn_base.smn_auxiliar_contacto.smn_auxiliar_rf, smn_base.smn_auxiliar_contacto.auc_descripcion 
from smn_base.smn_auxiliar_contacto
left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_base.smn_auxiliar_contacto.smn_auxiliar_rf
where smn_base.smn_auxiliar_contacto.smn_tipo_contactos_rf='2' 
and smn_base.smn_auxiliar.aux_num_doc_oficial='${fld:id}'