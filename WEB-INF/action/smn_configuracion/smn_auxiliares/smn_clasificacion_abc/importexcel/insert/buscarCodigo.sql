select
		smn_base.smn_clasificacion_abc.clf_codigo
from
		smn_base.smn_clasificacion_abc
where
		upper(smn_base.smn_clasificacion_abc.clf_codigo) = upper(${fld:clf_codigo})
