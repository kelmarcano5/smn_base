select
	smn_base.smn_tipo_doc_oficial.tdo_codigo,
	smn_base.smn_tipo_doc_oficial.tdo_descripcion,
	smn_base.smn_tipo_doc_oficial.tdo_fecha_registro,
	smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id
from
	smn_base.smn_tipo_doc_oficial
where
	smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id is not null
and
	smn_base.smn_tipo_doc_oficial.tdo_idioma = '${def:locale}'
and
	smn_base.smn_tipo_doc_oficial.tdo_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id desc
