select
	smn_base.smn_edificacion.*
from
	smn_base.smn_edificacion
where
	smn_edificacion_id = ${fld:id}
