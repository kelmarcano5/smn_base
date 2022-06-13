select
		smn_base.smn_edificacion.edf_codigo
from
		smn_base.smn_edificacion
where
		upper(smn_base.smn_edificacion.edf_codigo) = upper(${fld:edf_codigo})
