select
		smn_base.smn_atributo_valor.atv_codigo
from
		smn_base.smn_atributo_valor
		inner join smn_base.smn_atributo_item on smn_base.smn_atributo_item.smn_atributo_item_id = smn_base.smn_atributo_valor.smn_atributo_item_id
where
		upper(smn_base.smn_atributo_valor.atv_codigo) = upper(${fld:atv_codigo}) and smn_base.smn_atributo_item.ati_codigo <> upper(${fld:atv_codigo})
