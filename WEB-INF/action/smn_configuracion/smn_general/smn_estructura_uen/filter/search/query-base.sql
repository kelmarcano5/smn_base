select
	case
	when smn_base.smn_estructura_uen.eue_aplica_uen='CO' then '${lbl:b_corporation}'
	when smn_base.smn_estructura_uen.eue_aplica_uen='CM' then '${lbl:b_community}'
	when smn_base.smn_estructura_uen.eue_aplica_uen='EM' then '${lbl:b_entity}'
	when smn_base.smn_estructura_uen.eue_aplica_uen='SU' then '${lbl:b_subsidiary}'
	when smn_base.smn_estructura_uen.eue_aplica_uen='AS' then '${lbl:b_service_area}'
	when smn_base.smn_estructura_uen.eue_aplica_uen='NA' then '${lbl:b_does_not_apply}'
	end as eue_aplica_uen_combo,
	case
	when smn_base.smn_estructura_uen.eue_aplica_auxiliar_uen='AC' then '${lbl:b_outsourced_corporation}'
	when smn_base.smn_estructura_uen.eue_aplica_auxiliar_uen='CM' then '${lbl:b_community}'
	when smn_base.smn_estructura_uen.eue_aplica_auxiliar_uen='AT' then '${lbl:b_intermediary_assistant}'
	when smn_base.smn_estructura_uen.eue_aplica_auxiliar_uen='AS' then '${lbl:b_outsourced_subsidiary}'
	when smn_base.smn_estructura_uen.eue_aplica_auxiliar_uen='AA' then '${lbl:b_outsourced_service_area}'
	when smn_base.smn_estructura_uen.eue_aplica_auxiliar_uen='NA' then '${lbl:b_does_not_apply}'
	end as eue_aplica_auxiliar_uen_combo,
	smn_base.smn_estructura_uen.eue_aplica_uen,
	smn_base.smn_estructura_uen.eue_aplica_auxiliar_uen,
	smn_base.smn_estructura_uen.eue_fecha_registro,
	smn_base.smn_estructura_uen.smn_estructura_uen_id,
	smn_base.smn_estructura_uen.eue_idioma,
	smn_base.smn_estructura_uen.eue_usuario
from
	smn_base.smn_estructura_uen
where
	smn_base.smn_estructura_uen.smn_estructura_uen_id is not null
and
	smn_base.smn_estructura_uen.eue_idioma = '${def:locale}'
and
	smn_base.smn_estructura_uen.eue_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_estructura_uen.smn_estructura_uen_id desc
