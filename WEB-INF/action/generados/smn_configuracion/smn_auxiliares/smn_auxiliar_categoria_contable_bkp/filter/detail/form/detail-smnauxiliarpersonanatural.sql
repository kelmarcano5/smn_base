select
	case
		when smn_base.smn_auxiliar_persona_natural.ant_nacionalizado='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_persona_natural.ant_nacionalizado='N' then '${lbl:b_not}'
	end as ant_nacionalizado_combo,
	case
		when smn_base.smn_auxiliar_persona_natural.ant_sexo='MA' then '${lbl:b_male}'
		when smn_base.smn_auxiliar_persona_natural.ant_sexo='FE' then '${lbl:b_female}'
	end as ant_sexo_combo,
	case
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='SO' then '${lbl:b_single}'
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='CA' then '${lbl:b_married}'
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='VI' then '${lbl:b_widow}'
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='DI' then '${lbl:b_divorced}'
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='UM' then '${lbl:b_marital_union}'
	end as ant_estado_civil_combo,
	smn_base.smn_auxiliar_persona_natural.*
from 
	smn_base.smn_auxiliar_persona_natural,
	smn_base.smn_auxiliar_categoria
where
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id and 
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=${fld:id}
