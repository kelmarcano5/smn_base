select
		smn_base.smn_clasificacion_abc.clf_descripcion
from
		smn_base.smn_clasificacion_abc
where
		upper(smn_base.smn_clasificacion_abc.clf_descripcion) = upper(${fld:clf_descripcion})
