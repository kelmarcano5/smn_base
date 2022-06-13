select
	smn_base.smn_clasificacion_abc.clf_codigo,
	smn_base.smn_clasificacion_abc.clf_descripcion,
	smn_base.smn_clasificacion_abc.clf_ponderacion,
	smn_base.smn_clasificacion_abc.clf_fecha_registro,
		smn_base.smn_clasificacion_abc.smn_clasificacion_abc_id
	
from
	smn_base.smn_clasificacion_abc
where
	smn_clasificacion_abc_id is not null
	${filter}
order by
		smn_clasificacion_abc_id
