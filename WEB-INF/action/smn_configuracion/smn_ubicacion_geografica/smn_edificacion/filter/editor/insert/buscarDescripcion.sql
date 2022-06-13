select
		smn_base.smn_edificacion.edf_descripcion
from
		smn_base.smn_edificacion
where
		upper(smn_base.smn_edificacion.edf_descripcion) = upper(${fld:edf_descripcion})
