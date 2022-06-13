select
		smn_base.smn_rel_item_cod_impuesto.smn_item_id
from
		smn_base.smn_rel_item_cod_impuesto
where
		(smn_base.smn_rel_item_cod_impuesto.smn_item_id) = (${fld:smn_item_id})
