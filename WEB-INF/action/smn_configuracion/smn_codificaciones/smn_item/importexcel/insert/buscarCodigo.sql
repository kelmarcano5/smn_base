select
		smn_base.smn_item.acf_codigo
from
		smn_base.smn_item
where
		upper(smn_base.smn_item.acf_codigo) = upper(${fld:acf_codigo})
