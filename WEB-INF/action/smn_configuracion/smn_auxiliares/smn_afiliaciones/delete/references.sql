select 
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id as refid 
from 
	smn_base.smn_auxiliar_persona_natural 
where 
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id = ${fld:id}
union
select 
	smn_base.smn_modulos.smn_modulos_id as refid 
from 
	smn_base.smn_modulos 
where 
	smn_base.smn_modulos.smn_modulos_id = ${fld:id}
union
select 
	smn_base.smn_parentezco.smn_parentezco_id as refid 
from 
	smn_base.smn_parentezco 
where 
	smn_base.smn_parentezco.smn_parentezco_id = ${fld:id}
