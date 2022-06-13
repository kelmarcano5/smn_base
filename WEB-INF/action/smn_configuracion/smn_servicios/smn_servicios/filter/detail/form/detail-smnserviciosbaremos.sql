select
	smn_base.smn_baremos.smn_baremos_id,
	smn_base.smn_baremos.bar_codigo as bar_codigo_pl0,
	smn_base.smn_servicios_baremos.*
from
	smn_base.smn_servicios ,
	smn_base.smn_baremos,
	smn_base.smn_servicios_baremos
where
		smn_base.smn_servicios_baremos.smn_servicios_id=smn_base.smn_servicios.smn_servicios_id and
		smn_base.smn_servicios.smn_servicios_id=${fld:id}  and
	smn_base.smn_baremos.smn_baremos_id=smn_base.smn_servicios_baremos.smn_baremos_id
	
