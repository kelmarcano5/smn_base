select
		smn_base.smn_edificacion.edf_descripcion
from
		smn_base.smn_edificacion
where
		upper(trim(smn_base.smn_edificacion.edf_descripcion)) = upper(trim(${fld:edf_descripcion}))
