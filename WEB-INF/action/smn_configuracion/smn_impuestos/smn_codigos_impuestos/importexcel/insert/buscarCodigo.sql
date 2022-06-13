select
		smn_base.smn_codigos_impuestos.imp_codigo
from
		smn_base.smn_codigos_impuestos
where
		upper(smn_base.smn_codigos_impuestos.imp_codigo) = upper(${fld:imp_codigo})
