select
	case
	when smn_base.smn_auxiliar.aux_tipo_persona='PJ' then '${lbl:b_legal_person_value}'
	when smn_base.smn_auxiliar.aux_tipo_persona='PN' then '${lbl:b_natural_person_value}'
	when smn_base.smn_auxiliar.aux_tipo_persona='GO' then '${lbl:b_government_person}'
	end as aux_tipo_persona,
	smn_base.smn_clase_auxiliar.cla_codigo||'-'||smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_auxiliar.aux_tipo_persona,
	smn_base.smn_auxiliar.aux_codigo,
	smn_base.smn_auxiliar.aux_descripcion,
	smn_base.smn_auxiliar.smn_auxiliar_id,
	smn_base.smn_auxiliar.aux_fecha_registro
from
	smn_base.smn_auxiliar
	LEFT OUTER JOIN smn_base.smn_naturaleza_auxiliar on 
smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id=smn_base.smn_auxiliar.smn_naturaleza_auxiliar_rf
LEFT OUTER JOIN smn_base.smn_clase_auxiliar on 
smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_auxiliar.smn_clase_auxiliar_rf
where smn_base.smn_auxiliar.smn_naturaleza_auxiliar_rf='2' and
	smn_auxiliar_id is not null
	${filter}
order by
		smn_auxiliar_id
