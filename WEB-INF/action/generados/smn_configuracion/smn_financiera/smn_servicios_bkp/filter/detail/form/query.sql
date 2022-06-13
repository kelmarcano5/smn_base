select
	case
		when smn_base.smn_servicios.svc_inactivo='S' then '${lbl:b_yes}'
		when smn_base.smn_servicios.svc_inactivo='N' then '${lbl:b_not}'
	end as svc_inactivo_combo,
	case
		when smn_base.smn_servicios.svc_req_honorario='S' then '${lbl:b_yes}'
		when smn_base.smn_servicios.svc_req_honorario='N' then '${lbl:b_not}'
	end as svc_req_honorario_combo,
	smn_base.smn_servicios.*
from 
	smn_base.smn_servicios
where
	smn_servicios_id = ${fld:id}
