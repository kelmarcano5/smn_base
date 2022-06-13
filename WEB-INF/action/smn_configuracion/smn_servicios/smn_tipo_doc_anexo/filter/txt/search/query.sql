select
		smn_base.smn_tipo_doc_anexo.smn_tipo_doc_anexo_id,
	case
	when smn_base.smn_tipo_doc_anexo.tda_estatus='AC' then '${lbl:b_account_type_active}'
	when smn_base.smn_tipo_doc_anexo.tda_estatus='IN' then '${lbl:b_inactive}'
	end as tda_estatus_combo,
	smn_base.smn_tipo_doc_anexo.tda_codigo,
	smn_base.smn_tipo_doc_anexo.tda_descripción,
	smn_base.smn_tipo_doc_anexo.tda_estatus,
	smn_base.smn_tipo_doc_anexo.tda_vigencia,
	smn_base.smn_tipo_doc_anexo.tda_idioma,
	smn_base.smn_tipo_doc_anexo.tda_usuario,
	smn_base.smn_tipo_doc_anexo.tda_fecha_registro,
	smn_base.smn_tipo_doc_anexo.tda_hora,
		smn_base.smn_tipo_doc_anexo.smn_tipo_doc_anexo_id
	
from
	smn_base.smn_tipo_doc_anexo
order by
		smn_tipo_doc_anexo_id
