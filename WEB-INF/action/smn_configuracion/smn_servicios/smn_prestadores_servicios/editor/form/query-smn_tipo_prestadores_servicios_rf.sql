select smn_base.smn_tipo_prestadores_servicios.smn_tipo_prestadores_servicios_id as id, 
smn_base.smn_tipo_prestadores_servicios.tps_codigo||'-'|| smn_base.smn_tipo_prestadores_servicios.tps_descripcion as item 
from smn_base.smn_tipo_prestadores_servicios
order by smn_base.smn_tipo_prestadores_servicios.tps_codigo