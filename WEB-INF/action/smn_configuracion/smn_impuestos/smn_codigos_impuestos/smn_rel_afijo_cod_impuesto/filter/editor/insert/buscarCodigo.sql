select
		smn_base.smn_rel_afijo_cod_impuesto.smn_afijo_id
from
		smn_base.smn_rel_afijo_cod_impuesto
where
		(smn_base.smn_rel_afijo_cod_impuesto.smn_afijo_id) = (${fld:smn_afijo_id})
