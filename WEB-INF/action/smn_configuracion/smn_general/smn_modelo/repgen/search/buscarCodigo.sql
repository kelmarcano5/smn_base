select
		smn_base.smn_modelo.mod_codigo
from
		smn_base.smn_modelo
where
		upper(smn_base.smn_modelo.mod_codigo) = upper(${fld:mod_codigo})
