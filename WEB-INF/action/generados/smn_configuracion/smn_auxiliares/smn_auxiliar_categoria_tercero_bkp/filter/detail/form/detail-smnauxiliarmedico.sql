select
	case
		when smn_base.smn_auxiliar_medico.aam_nacionalizado='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_medico.aam_nacionalizado='N' then '${lbl:b_not}'
	end as aam_nacionalizado_combo,
	case
		when smn_base.smn_auxiliar_medico.aam_sexo='MA' then '${lbl:b_male}'
		when smn_base.smn_auxiliar_medico.aam_sexo='FE' then '${lbl:b_female}'
	end as aam_sexo_combo,
	case
		when smn_base.smn_auxiliar_medico.aam_estado_civil=SO then '${lbl:b_single}'
		when smn_base.smn_auxiliar_medico.aam_estado_civil=CA then '${lbl:b_married}'
		when smn_base.smn_auxiliar_medico.aam_estado_civil=VI then '${lbl:b_widow}'
		when smn_base.smn_auxiliar_medico.aam_estado_civil=DI then '${lbl:b_divorced}'
		when smn_base.smn_auxiliar_medico.aam_estado_civil=UM then '${lbl:b_marital_union}'
	end as aam_estado_civil_combo,
	case
		when smn_base.smn_auxiliar_medico.aam_clasif_abc='A' then '${lbl:b_type} A'
		when smn_base.smn_auxiliar_medico.aam_clasif_abc='B' then '${lbl:b_type} B'
		when smn_base.smn_auxiliar_medico.aam_clasif_abc='C' then '${lbl:b_type} C'
	end as aam_clasif_abc_combo,
	smn_base.smn_auxiliar_medico.*
from 
	smn_base.smn_auxiliar_medico,
	smn_base.smn_auxiliar_categoria
where
	smn_base.smn_auxiliar_medico.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id and 
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=${fld:id}
