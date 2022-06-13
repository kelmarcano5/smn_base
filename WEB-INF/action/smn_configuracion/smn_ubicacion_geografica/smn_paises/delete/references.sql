select 
	smn_base.smn_idiomas.smn_idiomas_id as refid 
from 
	smn_base.smn_idiomas 
where 
	smn_base.smn_idiomas.smn_idiomas_id = ${fld:id}
union
select 
	smn_base.smn_monedas.smn_monedas_id as refid 
from 
	smn_base.smn_monedas 
where 
	smn_base.smn_monedas.smn_monedas_id = ${fld:id}
