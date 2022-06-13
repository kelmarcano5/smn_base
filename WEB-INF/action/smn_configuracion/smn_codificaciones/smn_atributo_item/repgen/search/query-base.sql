select
		smn_base.smn_atributo_item.smn_atributo_item_id,
	${field}
from
	smn_base.smn_atributo_item
where
		smn_base.smn_atributo_item.smn_atributo_item_id is not null
	${filter}
	
	
