select	
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
	smn_base.smn_codigos_impuestos.imp_codigo,
	smn_base.smn_codigos_impuestos.imp_descripcion,
	smn_base.smn_codigos_impuestos.imp_tipo_codigo,
	smn_base.smn_codigos_impuestos.imp_modalidad_registro,
	smn_base.smn_codigos_impuestos.imp_tipo_libro,
	smn_base.smn_codigos_impuestos.imp_tipo_persona,
	smn_base.smn_codigos_impuestos.imp_fecha_registro,
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id

from
	smn_base.smn_codigos_impuestos
where
	smn_codigos_impuestos_id is not null	
 	 	${filter}
order by 
	smn_codigos_impuestos_id