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
