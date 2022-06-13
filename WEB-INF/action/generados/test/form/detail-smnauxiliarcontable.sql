select
	(select smn_base.smn_tipo_doc_oficial.tdo_codigo || ' - ' || smn_base.smn_tipo_doc_oficial.tdo_descripcion from  smn_base.smn_tipo_doc_oficial  where smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id is not null  and smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id=smn_base.smn_auxiliar_categoria.aac_tipo_doc_oficial  order by smn_base.smn_tipo_doc_oficial.tdo_descripcion ) as aac_tipo_doc_oficial_combo,
	smn_base.smn_auxiliar_contable.*
from 
	smn_base.smn_auxiliar_contable,
	smn_base.smn_auxiliar_categoria
where
	smn_base.smn_auxiliar_contable.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id and 
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=${fld:id}
