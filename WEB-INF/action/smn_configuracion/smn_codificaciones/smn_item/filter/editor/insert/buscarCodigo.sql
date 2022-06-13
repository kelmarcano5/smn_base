select
		smn_base.smn_item.itm_codigo
from
		smn_base.smn_item
where
		upper(smn_base.smn_item.itm_codigo) = upper(${fld:itm_codigo})
