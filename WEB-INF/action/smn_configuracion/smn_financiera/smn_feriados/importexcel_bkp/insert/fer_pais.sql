select 
	smn_base.smn_paises.smn_paises_id as fer_pais_ref 
from   
	smn_base.smn_paises 
where  
	upper(smn_base.smn_paises.pai_nombre_corto) = upper(${fld:fer_pais_desc})
