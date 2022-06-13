select
		smn_base.smn_codigos_impuestos.imp_tipo_codigo
from
		smn_base.smn_codigos_impuestos
where
		upper(smn_base.smn_codigos_impuestos.imp_tipo_codigo) = upper(${fld:imp_tipo_codigo})
