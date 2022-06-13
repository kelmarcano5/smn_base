select
	(select
		smn_base.smn_unidades_impositivas.uim_descripcion
	 from 
	 	smn_base.smn_unidades_impositivas
	 where 
	 	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id = ${fld:uim_id_filter}) as uim_descripcion_filter,
	smn_base.smn_unidades_impositivas.uim_descripcion,
	case
		when ${fld:imp_tipo_persona_filter}='NA' then '${lbl:b_natural_person}'
		when ${fld:imp_tipo_persona_filter}='JU' then '${lbl:b_legal_person}'
	end as imp_tipo_persona_filter,
	case
		when ${fld:imp_tipo_contribuyente_filter}='FO' then '${lbl:b_formal_taxpayer}'
		when ${fld:imp_tipo_contribuyente_filter}='OR' then '${lbl:b_ordinary_taxpayer}'
		when ${fld:imp_tipo_contribuyente_filter}='NC' then '${lbl:b_no_taxpayer}'
		when ${fld:imp_tipo_contribuyente_filter}='ES' then '${lbl:b_special_taxpayer}'
	end as imp_tipo_contribuyente_filter,
	case
		when smn_base.smn_codigos_impuestos.imp_tipo_codigo='VA' then '${lbl:b_added_value}'
		when smn_base.smn_codigos_impuestos.imp_tipo_codigo='RE' then '${lbl:b_retention}'
	end as imp_tipo_codigo_combo,
	case
		when smn_base.smn_codigos_impuestos.imp_modalidad_registro='OB' then '${lbl:b_obligation}'
		when smn_base.smn_codigos_impuestos.imp_modalidad_registro='PA' then '${lbl:b_payment}'
	end as imp_modalidad_registro_combo,
	case
		when smn_base.smn_codigos_impuestos.imp_tipo_libro='CO' then '${lbl:b_purchases}'
		when smn_base.smn_codigos_impuestos.imp_tipo_libro='VE' then '${lbl:b_sales}'
		when smn_base.smn_codigos_impuestos.imp_tipo_libro='RE' then '${lbl:b_retention}'
	end as imp_tipo_libro_combo,
	case
		when smn_base.smn_codigos_impuestos.imp_tipo_persona='NA' then '${lbl:b_natural_person}'
		when smn_base.smn_codigos_impuestos.imp_tipo_persona='JU' then '${lbl:b_legal_person}'
	end as imp_tipo_persona_combo,
	case
		when smn_base.smn_codigos_impuestos.imp_tipo_contribuyente='FO' then '${lbl:b_formal_taxpayer}'
		when smn_base.smn_codigos_impuestos.imp_tipo_contribuyente='OR' then '${lbl:b_ordinary_taxpayer}'
		when smn_base.smn_codigos_impuestos.imp_tipo_contribuyente='NC' then '${lbl:b_no_taxpayer}'
		when smn_base.smn_codigos_impuestos.imp_tipo_contribuyente='ES' then '${lbl:b_special_taxpayer}'
	end as imp_tipo_contribuyente_combo,  
	smn_base.smn_codigos_impuestos.*
from
	smn_base.smn_unidades_impositivas,
	smn_base.smn_codigos_impuestos
where
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id = smn_base.smn_codigos_impuestos.imp_unidad_impositiva 
and
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id = ${fld:id}
