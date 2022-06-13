select
	smn_base.smn_tipo_doc_oficial.tdo_descripcion
from
	smn_base.smn_tipo_doc_oficial
where
	upper(trim(smn_base.smn_tipo_doc_oficial.tdo_descripcion)) = upper(trim(${fld:tdo_descripcion}))
