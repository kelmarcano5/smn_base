select
		smn_base.smn_item.smn_item_id,
	${field}
from
	smn_base.smn_item
where
		smn_base.smn_item.smn_item_id is not null
	${filter}
	
	
