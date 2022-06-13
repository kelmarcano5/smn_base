select
		smn_base.smn_rel_afijo_cod_impuesto.smn_codigos_impuestos_id
from
		smn_base.smn_rel_afijo_cod_impuesto
where
		upper(smn_base.smn_rel_afijo_cod_impuesto.smn_codigos_impuestos_id) = upper(${fld:smn_codigos_impuestos_id})
