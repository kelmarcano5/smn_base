select
	smn_base.smn_clase_auxiliar.cla_nombre,
	${field}
from
	smn_base.smn_componentes
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_componentes.cmp_clase_auxiliar_rf
where
		smn_base.smn_componentes.smn_componentes_id = ${fld:id}
	
