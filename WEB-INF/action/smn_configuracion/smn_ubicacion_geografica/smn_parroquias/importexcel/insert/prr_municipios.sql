select 
	smn_base.smn_municipios.smn_municipios_id as prr_municipios_ref 
from   
	smn_base.smn_municipios 
where  
	upper(trim(smn_base.smn_municipios.mun_codigo)) || ' - ' || upper(trim(smn_base.smn_municipios.mun_nombre_corto)) = upper(trim(${fld:prr_municipios_desc}))
