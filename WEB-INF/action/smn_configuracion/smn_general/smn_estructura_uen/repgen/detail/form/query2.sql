select
	case
		when ${fld:uen_filter}='CO' then '${lbl:b_corporation}'
		when ${fld:uen_filter}='CM' then '${lbl:b_community}'
		when ${fld:uen_filter}='EM' then '${lbl:b_entity}'
		when ${fld:uen_filter}='SU' then '${lbl:b_subsidiary}'
		when ${fld:uen_filter}='AS' then '${lbl:b_service_area}'
		when ${fld:uen_filter}='NA' then '${lbl:b_does_not_apply}'
	end as eue_aplica_uen_filter,
	case
		when  ${fld:uen_auxiliar_filter}='AC' then '${lbl:b_outsourced_corporation}'
		when  ${fld:uen_auxiliar_filter}='CM' then '${lbl:b_community}'
		when  ${fld:uen_auxiliar_filter}='AT' then '${lbl:b_intermediary_assistant}'
		when  ${fld:uen_auxiliar_filter}='AS' then '${lbl:b_outsourced_subsidiary}'
		when  ${fld:uen_auxiliar_filter}='AA' then '${lbl:b_outsourced_service_area}'
		when  ${fld:uen_auxiliar_filter}='NA' then '${lbl:b_does_not_apply}'
	end as eue_aplica_auxiliar_uen_filter,
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
	smn_base.smn_estructura_uen.*
from
	smn_base.smn_estructura_uen
where
	smn_base.smn_estructura_uen.smn_estructura_uen_id = ${fld:id}
