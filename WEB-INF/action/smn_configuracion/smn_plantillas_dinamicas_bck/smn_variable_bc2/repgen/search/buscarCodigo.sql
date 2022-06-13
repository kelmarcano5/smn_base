select
		smn_base.smn_variable.var_codigo
from
		smn_base.smn_variable
where
		upper(smn_base.smn_variable.var_codigo) = upper(${fld:var_codigo})
