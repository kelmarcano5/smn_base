select 
	smn_base.smn_paises.smn_paises_id as efe_paises_ref 
from   
	smn_base.smn_paises 
where  
	upper(trim(smn_base.smn_paises.pai_codigo)) || ' - ' || upper(trim(smn_base.smn_paises.pai_nombre_corto)) = upper(trim(${fld:efe_paises_desc}))
