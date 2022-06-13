select
		smn_base.smn_item.acf_nombre
from
		smn_base.smn_item
where
		upper(smn_base.smn_item.acf_nombre) = upper(${fld:acf_nombre})
