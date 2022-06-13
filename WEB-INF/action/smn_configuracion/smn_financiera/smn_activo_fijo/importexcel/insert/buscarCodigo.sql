select
		smn_base.smn_activo_fijo.acf_codigo
from
		smn_base.smn_activo_fijo
where
		upper(smn_base.smn_activo_fijo.acf_codigo) = upper(${fld:acf_codigo})
