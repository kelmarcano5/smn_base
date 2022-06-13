select 
	smn_base.smn_ciudades.smn_ciudades_id as fer_ciudad_ref 
from   
	smn_base.smn_ciudades 
where  
	upper(smn_base.smn_ciudades.ciu_nombre_corto) = upper(${fld:fer_ciudad_desc})
