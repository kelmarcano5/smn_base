select 
	smn_base.smn_entidades_federales.smn_entidades_federales_id as fer_entidad_federal_ref 
from   
	smn_base.smn_entidades_federales 
where  
	upper(smn_base.smn_entidades_federales.efe_nombre_corto) = upper(${fld:fer_entidad_federal_desc})
