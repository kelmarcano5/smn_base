select 
	smn_base.smn_areas_servicios.smn_areas_servicios_id as refid 
from 
	smn_base.smn_areas_servicios 
where 
	smn_base.smn_areas_servicios.smn_areas_servicios_id = ${fld:id}
union
select 
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id as refid 
from 
	smn_base.smn_unidades_servicios 
where 
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id = ${fld:id}	
union
select 
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id as refid 
from 
	smn_base.smn_clase_auxiliar 
where 
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = ${fld:id}
union
select 
	smn_base.smn_v_auxiliar.smn_v_auxiliar_id as refid 
from 
	smn_base.smn_v_auxiliar 
where 
	smn_base.smn_v_auxiliar.smn_v_auxiliar_id = ${fld:id}
union
select 
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id as refid 
from 
	smn_base.smn_grupos_prestadores 
where 
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id = ${fld:id}
union
select 
	smn_base.smn_direccion.smn_direccion_id as refid 
from 
	smn_base.smn_direccion 
where 
	smn_base.smn_direccion.smn_direccion_id = ${fld:id}

	
	
	