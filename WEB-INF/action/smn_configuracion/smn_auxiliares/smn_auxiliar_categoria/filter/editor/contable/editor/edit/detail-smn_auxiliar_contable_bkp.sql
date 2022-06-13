select
	(select smn_base.smn_tipo_doc_oficial.tdo_codigo || ' - ' || smn_base.smn_tipo_doc_oficial.tdo_descripcion from  smn_base.smn_tipo_doc_oficial  where smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id is not null  and smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id=smn_base.smn_auxiliar_contable.aac_tipo_doc_oficial  order by smn_base.smn_tipo_doc_oficial.tdo_descripcion ) as aac_tipo_doc_oficial2_name,
	(select smn_base.smn_v_auxiliar.smn_codigo || ' - ' || smn_base.smn_v_auxiliar.smn_item as item from smn_base.smn_v_auxiliar order by smn_base.smn_v_auxiliar.smn_item) as smn_auxiliar_categoria_id2_name,
	smn_base.smn_auxiliar_contable.aac_codigo as aac_codigo2,
	smn_base.smn_auxiliar_contable.aac_descripcion as aac_descripcion2,
	smn_base.smn_auxiliar_contable.aac_tipo_doc_oficial as aac_tipo_doc_oficial2,
	smn_base.smn_auxiliar_contable.aac_num_doc_oficial as aac_num_doc_oficial2,
	smn_base.smn_auxiliar_contable.smn_auxiliar_contable_id as smn_auxiliar_contable_id2,
	smn_base.smn_auxiliar_contable.smn_auxiliar_categoria_id as smn_auxiliar_categoria_id2
from 
	smn_base.smn_auxiliar_contable
where 
	smn_base.smn_auxiliar_contable.smn_auxiliar_categoria_id = ${fld:id}