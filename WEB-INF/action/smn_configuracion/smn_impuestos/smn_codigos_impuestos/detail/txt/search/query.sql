select
	smn_base.smn_unidades_impositivas.uim_descripcion,
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
		when smn_base.smn_codigos_impuestos.imp_tipo_persona='PN' then '${lbl:b_natural_person}'
		when smn_base.smn_codigos_impuestos.imp_tipo_persona='PNNR' then '${lbl:b_natural_not_resident}'
		when smn_base.smn_codigos_impuestos.imp_tipo_persona='PJD' then '${lbl:b_legal_domiciled}'
		when smn_base.smn_codigos_impuestos.imp_tipo_persona='PJND' then '${lbl:b_legal_not_domiciled}'
		when smn_base.smn_codigos_impuestos.imp_tipo_persona='CA' then '${lbl:b_any}'
	end as imp_tipo_persona_combo,
	case
		when smn_base.smn_codigos_impuestos.imp_tipo_contribuyente='FO' then '${lbl:b_formal_taxpayer}'
		when smn_base.smn_codigos_impuestos.imp_tipo_contribuyente='OR' then '${lbl:b_ordinary_taxpayer}'
		when smn_base.smn_codigos_impuestos.imp_tipo_contribuyente='NC' then '${lbl:b_no_taxpayer}'
		when smn_base.smn_codigos_impuestos.imp_tipo_contribuyente='ES' then '${lbl:b_special_taxpayer}'
		when smn_base.smn_codigos_impuestos.imp_tipo_contribuyente='CA' then '${lbl:b_any}'
	end as imp_tipo_contribuyente_combo,
	smn_base.smn_codigos_impuestos.*
from
	smn_base.smn_unidades_impositivas,
	smn_base.smn_codigos_impuestos
where
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id = smn_base.smn_codigos_impuestos.imp_unidad_impositiva and
	smn_codigos_impuestos_id = ${fld:id}
