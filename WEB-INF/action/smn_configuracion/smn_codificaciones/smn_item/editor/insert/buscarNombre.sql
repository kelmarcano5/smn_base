select
		smn_base.smn_item.itm_nombre
from
		smn_base.smn_item
where
		upper(smn_base.smn_item.itm_nombre) = upper(${fld:itm_nombre})
