select 
	smn_base.smn_monedas.smn_monedas_id as pai_moneda_oficial_ref 
from   
	smn_base.smn_monedas 
where  
	upper(trim(smn_base.smn_monedas.mon_nombre)) = upper(trim(${fld:pai_moneda_oficial_desc}))
