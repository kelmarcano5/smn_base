select	
	smn_base.smn_auxiliar_tipos_servicios.smn_auxiliar_tipos_servicios_id, 
	smn_base.smn_auxiliar_tipos_servicios.tts_codigo as tts_codigo_pl0,
	smn_base.smn_auxiliar_areas_servicios.*
from
	smn_base.smn_auxiliar_tipos_servicios,
	smn_base.smn_auxiliar_areas_servicios 
where
	smn_base.smn_auxiliar_tipos_servicios.smn_auxiliar_tipos_servicios_id=smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_tipos_servicios_id and
	smn_auxiliar_areas_servicios_id = ${fld:id} 
	


