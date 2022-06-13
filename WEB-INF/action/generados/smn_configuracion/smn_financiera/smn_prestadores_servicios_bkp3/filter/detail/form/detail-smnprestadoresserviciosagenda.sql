select	
	smn_base.smn_agenda.smn_agenda_id, 
	smn_base.smn_agenda.age_descripcion as age_descripcion_pl0,
	smn_base.smn_prestadores_servicios_agenda.*
from
	smn_base.smn_prestadores_servicios ,
	smn_base.smn_agenda,
	smn_base.smn_prestadores_servicios_agenda
where
	smn_base.smn_prestadores_servicios_agenda.smn_prestadores_servicios_id=smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id and 
	smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id=${fld:id}  and 
	smn_base.smn_agenda.smn_agenda_id=smn_base.smn_prestadores_servicios_agenda.smn_agenda_id 

