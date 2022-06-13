select
	smn_base.smn_prestadores_servicios_agenda.*,
	smn_base.smn_agenda.*
from 
	smn_base.smn_prestadores_servicios_agenda,
	smn_base.smn_agenda
where 
	smn_base.smn_prestadores_servicios_agenda.smn_prestadores_servicios_id = ${fld:id} and
	smn_base.smn_prestadores_servicios_agenda.smn_agenda_id = smn_base.smn_agenda.smn_agenda_id