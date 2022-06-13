select
	smn_base.smn_tipo_doc_oficial.tdo_descripcion,
		smn_base.smn_auxiliar.smn_auxiliar_id,
select
		smn_base.smn_auxiliar.smn_auxiliar_id,
select
		smn_base.smn_auxiliar.smn_auxiliar_id,
	case
	when smn_base.smn_auxiliar.aux_tipo_persona='PJ' then '${lbl:b_legal_person_value}'
	when smn_base.smn_auxiliar.aux_tipo_persona='PN' then '${lbl:b_natural_person_value}'
	when smn_base.smn_auxiliar.aux_tipo_persona='GO' then '${lbl:b_government_person}
	'
	end as aux_tipo_persona,
select
		smn_base.smn_auxiliar.smn_auxiliar_id,
	smn_base.smn_auxiliar.smn_naturaleza_auxiliar_rf,
	smn_base.smn_auxiliar.smn_clase_auxiliar_rf,
	smn_base.smn_auxiliar.aux_tipo_persona,
	smn_base.smn_auxiliar.aux_apellidos,
	smn_base.smn_auxiliar.aux_nombres,
	smn_base.smn_auxiliar.aux_tipo_doc_oficial_rf,
	smn_base.smn_auxiliar.aux_num_doc_oficial,
	smn_base.smn_auxiliar.aux_fecha_registro
	
from
	smn_base.smn_auxiliar
	left outer join smn_base.smn_tipo_doc_oficial on smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id = smn_base.smn_auxiliar.aux_tipo_doc_oficial_rf
