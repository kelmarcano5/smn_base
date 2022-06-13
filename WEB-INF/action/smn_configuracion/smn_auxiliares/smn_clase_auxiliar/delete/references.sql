select 
	smn_base.smn_modulos.smn_modulos_id as refid 
from 
	smn_base.smn_modulos 
where 
	smn_base.smn_modulos.smn_modulos_id = ${fld:id}
union
select 
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id as refid 
from 
	smn_base.smn_naturaleza_auxiliar 
where 
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id = ${fld:id}
