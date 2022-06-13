select 
	COALESCE( 
		(select 
	smn_base.smn_monedas.smn_monedas_id  
from   
	smn_base.smn_monedas 
where  
	upper(trim(smn_base.smn_monedas.mon_nombre)) = upper(trim(${fld:crp_moneda_desc}))
	), '') as crp_moneda_ref	