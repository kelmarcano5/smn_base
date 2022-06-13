select
		smn_base.smn_atributo_item.ati_nombre
from
		smn_base.smn_atributo_item
where
		upper(smn_base.smn_atributo_item.ati_nombre) = upper(${fld:ati_nombre})
