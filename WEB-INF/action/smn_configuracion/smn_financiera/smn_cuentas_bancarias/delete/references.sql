select 
	smn_base.smn_tipo_cuenta_banco.smn_tipo_cuenta_banco_id as refid 
from 
	smn_base.smn_tipo_cuenta_banco 
where 
	smn_base.smn_tipo_cuenta_banco.smn_tipo_cuenta_banco_id = ${fld:id}
union
select 
	smn_base.smn_monedas.smn_monedas_id as refid 
from 
	smn_base.smn_monedas 
where 
	smn_base.smn_monedas.smn_monedas_id = ${fld:id}
