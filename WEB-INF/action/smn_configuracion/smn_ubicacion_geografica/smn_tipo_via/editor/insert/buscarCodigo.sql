select
		smn_base.smn_tipo_via.tiv_codigo
from
		smn_base.smn_tipo_via
where
		upper(smn_base.smn_tipo_via.tiv_codigo) = upper(${fld:tiv_codigo})
