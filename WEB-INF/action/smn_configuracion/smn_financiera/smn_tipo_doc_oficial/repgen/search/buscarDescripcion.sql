select
		smn_base.smn_tipo_doc_oficial.tdo_descripcion
from
		smn_base.smn_tipo_doc_oficial
where
		upper(smn_base.smn_tipo_doc_oficial.tdo_descripcion) = upper(${fld:tdo_descripcion})
