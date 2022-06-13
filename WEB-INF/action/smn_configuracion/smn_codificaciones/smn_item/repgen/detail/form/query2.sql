select
		smn_base.smn_item.itm_codigo,
	smn_base.smn_item.itm_nombre,
	smn_base.smn_item.itm_proveedor_exclusivo,
	smn_base.smn_item.smn_almacenado,
	smn_base.smn_item.itm_fecha_registro,
	smn_base.smn_item.itm_codigo,
	smn_base.smn_item.itm_nombre,
	smn_base.smn_item.itm_proveedor_exclusivo,
	smn_base.smn_item.smn_almacenado,
	smn_base.smn_item.itm_fecha_registro
from
	smn_base.smn_item 
where
	smn_base.smn_item.smn_item_id = ${fld:id}
