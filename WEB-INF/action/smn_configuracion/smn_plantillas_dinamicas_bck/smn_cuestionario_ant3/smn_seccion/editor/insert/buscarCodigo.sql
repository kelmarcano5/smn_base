select
		smn_base.smn_seccion.sec_codigo
from
		smn_base.smn_seccion
where
		upper(smn_base.smn_seccion.sec_codigo) = upper(${fld:sec_codigo})
