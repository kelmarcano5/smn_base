select
		smn_base.smn_edificacion.edf_codigo
from
		smn_base.smn_edificacion
where
		upper(trim(smn_base.smn_edificacion.edf_codigo)) = upper(trim(${fld:edf_codigo}))
