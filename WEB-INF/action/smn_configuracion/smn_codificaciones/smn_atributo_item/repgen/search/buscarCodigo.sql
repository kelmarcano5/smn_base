select
		smn_base.smn_atributo_item.ati_codigo
from
		smn_base.smn_atributo_item
where
		upper(smn_base.smn_atributo_item.ati_codigo) = upper(${fld:ati_codigo})
