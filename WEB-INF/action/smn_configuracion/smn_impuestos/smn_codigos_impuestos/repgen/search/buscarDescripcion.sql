select
		smn_base.smn_codigos_impuestos.imp_descripcion
from
		smn_base.smn_codigos_impuestos
where
		upper(smn_base.smn_codigos_impuestos.imp_descripcion) = upper(${fld:imp_descripcion})
