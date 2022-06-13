select	
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id, 
	smn_base.smn_auxiliar_categoria.aca_tipo_persona as aca_tipo_persona_pl0,
	(select smn_base.smn_v_auxiliar.aux_codigo || ' - ' || smn_base.smn_v_auxiliar.aux_descripcion from  smn_base.smn_v_auxiliar  where smn_base.smn_v_auxiliar.smn_v_auxiliar_id is not null  and smn_base.smn_v_auxiliar.smn_v_auxiliar_id=smn_base.smn_auxiliar_contable.smn_auxiliar_categoria_id  order by smn_base.smn_v_auxiliar.aux_descripcion ) as smn_auxiliar_categoria_id_combo,
	(select smn_base.smn_tipo_doc_oficial.tdo_codigo || ' - ' || smn_base.smn_tipo_doc_oficial.tdo_descripcion from  smn_base.smn_tipo_doc_oficial  where smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id is not null  and smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id=smn_base.smn_auxiliar_contable.aac_tipo_doc_oficial  order by smn_base.smn_tipo_doc_oficial.tdo_descripcion ) as aac_tipo_doc_oficial_combo,
	smn_base.smn_auxiliar_contable.*
from
	smn_base.smn_auxiliar_categoria,
	smn_base.smn_auxiliar_contable 
where
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_contable.smn_auxiliar_categoria_id 
 and 
	smn_auxiliar_contable_id = ${fld:id}
