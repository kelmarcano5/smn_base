select 
	smn_base.smn_direccion.smn_direccion_id as refid 
from 
	smn_base.smn_direccion 
where 
	smn_base.smn_direccion.smn_direccion_id = ${fld:id}
union
select 
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id as refid 
from 
	smn_base.smn_entidades_financieras 
where 
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id = ${fld:id}
