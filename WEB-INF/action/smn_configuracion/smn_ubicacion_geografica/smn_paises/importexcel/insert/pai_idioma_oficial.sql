select 
	smn_base.smn_idiomas.smn_idiomas_id as pai_idioma_oficial_ref 
from   
	smn_base.smn_idiomas 
where  
	upper(trim(smn_base.smn_idiomas.idi_descripcion)) = upper(trim(${fld:pai_idioma_oficial_desc}))
