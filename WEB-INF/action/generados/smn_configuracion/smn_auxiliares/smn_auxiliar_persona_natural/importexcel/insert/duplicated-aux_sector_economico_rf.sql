select
	smn_sectores_economicos_id	
from 
	smn_base.smn_sectores_economicos
where
	smn_sectores_economicos_id = ${fld:aux_sector_economico_rf}
	