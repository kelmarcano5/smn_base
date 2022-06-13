select
		smn_base.smn_tipo_via.tiv_codigo
from
		smn_base.smn_tipo_via
where
		upper(trim(smn_base.smn_tipo_via.tiv_codigo)) = upper(trim(${fld:tiv_codigo}))
