select
	smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id,
	smn_base.smn_tipo_doc_oficial.tdo_codigo,
	smn_base.smn_tipo_doc_oficial.tdo_descripcion,
	smn_base.smn_tipo_doc_oficial.tdo_fecha_registro
from
	smn_base.smn_tipo_doc_oficial
where
	smn_base.smn_tipo_doc_oficial.tdo_idioma = '${def:locale}'
order by
	smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id desc