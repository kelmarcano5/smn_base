select
	case
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PN' then '${lbl:b_natural_person}'
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PJ' then '${lbl:b_legal_person}'
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='GO' then '${lbl:b_government_person}'
	end as aca_tipo_persona_combo,
	smn_base.smn_auxiliar_categoria.aca_codigo,
	smn_base.smn_auxiliar_categoria.aca_descripcion,
	smn_base.smn_auxiliar_categoria.aca_clase_auxiliar,
	smn_base.smn_auxiliar_categoria.aca_tipo_persona,
	smn_base.smn_auxiliar_categoria.aca_fecha_registro

from 
	smn_base.smn_auxiliar_categoria
