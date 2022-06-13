select smn_base.smn_auxiliar.smn_auxiliar_id as id, 
smn_base.smn_auxiliar.aux_descripcion as nombres,
case 
when smn_base.smn_auxiliar.aux_num_doc_oficial is null then smn_base.smn_auxiliar.aux_rif
when smn_base.smn_auxiliar.aux_num_doc_oficial is not null then smn_base.smn_auxiliar.aux_codigo
end as cedula,
smn_base.smn_clase_auxiliar.cla_nombre as clase
from smn_base.smn_auxiliar
inner join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar.smn_clase_auxiliar_rf
where smn_base.smn_auxiliar.smn_auxiliar_id=${fld:id}