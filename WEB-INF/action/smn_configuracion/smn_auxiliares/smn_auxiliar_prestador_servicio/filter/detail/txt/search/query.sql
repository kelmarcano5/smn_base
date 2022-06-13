select
	(select smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' ||smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_auxiliar.smn_clase_auxiliar_rf) as smn_clase_auxiliar_rf,
	case
		when smn_base.smn_auxiliar.aux_tipo_persona='PJ' then '${lbl:b_legal_person_value}'
		when smn_base.smn_auxiliar.aux_tipo_persona='PN' then '${lbl:b_natural_person_value}'
		when smn_base.smn_auxiliar.aux_tipo_persona='GO' then '${lbl:b_government_person}
'
	end as aux_tipo_persona,
	(select smn_base.smn_direccion.dir_codigo|| ' - ' ||smn_base.smn_direccion.dir_descripcion from  smn_base.smn_direccion where smn_base.smn_direccion.smn_direccion_id is not null  and smn_base.smn_direccion.smn_direccion_id=smn_base.smn_auxiliar.aux_direccion_rf) as aux_direccion_rf,
	smn_base.smn_auxiliar.*
from 
	smn_base.smn_auxiliar
where
	smn_auxiliar_id = ${fld:id}
