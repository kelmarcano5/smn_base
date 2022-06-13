select 
	smn_base.smn_ciudades.smn_ciudades_id as mun_ciudades_ref 
from   
	smn_base.smn_ciudades 
where  
	upper(trim(smn_base.smn_ciudades.ciu_codigo)) || ' - ' || upper(trim(smn_base.smn_ciudades.ciu_nombre_corto)) = upper(trim(${fld:mun_ciudades_desc}))
