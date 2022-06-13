select	
	smn_base.smn_agenda.*
from
	smn_base.smn_agenda 
where
	smn_agenda_id is not null
	${filter}