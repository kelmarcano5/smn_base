select
		smn_base.smn_rel_item_desc_retenc.smn_descuentos_retenciones_id,
	smn_base.smn_rel_item_desc_retenc.smn_item_id,
	smn_base.smn_rel_item_desc_retenc.rid_fecha_registro
from
	smn_base.smn_rel_item_desc_retenc 
where
	smn_base.smn_rel_item_desc_retenc.smn_rel_item_desc_retenc_id = ${fld:id}
