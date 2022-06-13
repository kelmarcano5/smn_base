select
	smn_base.smn_sectores_economicos.*
from
	smn_base.smn_sectores_economicos
where
	smn_sectores_economicos_id = ${fld:id}
