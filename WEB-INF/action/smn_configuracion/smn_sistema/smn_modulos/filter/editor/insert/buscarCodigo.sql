select
		smn_base.smn_modulos.mod_codigo
from
		smn_base.smn_modulos
where
		upper(smn_base.smn_modulos.mod_codigo) = upper(${fld:mod_codigo})
