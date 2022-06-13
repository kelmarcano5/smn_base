select
		smn_base.smn_tipo_variable.tva_codigo
from
		smn_base.smn_tipo_variable
where
		upper(smn_base.smn_tipo_variable.tva_codigo) = upper(${fld:tva_codigo})
