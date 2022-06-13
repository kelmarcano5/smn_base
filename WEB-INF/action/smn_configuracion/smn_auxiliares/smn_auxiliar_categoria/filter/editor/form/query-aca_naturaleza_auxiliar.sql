select 
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id as id, 
	smn_base.smn_clase_auxiliar.cla_codigo || ' - ' || 
	smn_base.smn_naturaleza_auxiliar.naa_nombre || ' | ' || 
	smn_base.smn_clase_auxiliar.cla_nombre as item 
from 
	smn_base.smn_clase_auxiliar,
	smn_base.smn_naturaleza_auxiliar
where
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id = smn_base.smn_clase_auxiliar.cla_naturaleza
order by 
	smn_base.smn_clase_auxiliar.cla_nombre