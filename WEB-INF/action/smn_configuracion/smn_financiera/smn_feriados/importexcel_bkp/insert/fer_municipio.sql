select 
	smn_base.smn_municipios.smn_municipios_id as fer_municipio_ref 
from   
	smn_base.smn_municipios 
where  
	upper(smn_base.smn_municipios.mun_nombre_corto) = upper(${fld:fer_municipio_desc})
