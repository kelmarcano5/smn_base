select 
	smn_base.smn_entidades.smn_entidades_id as ase_empresa_ref 
from   
	smn_base.smn_entidades 
where  
	upper(smn_base.smn_entidades.ent_descripcion_corta) = upper(${fld:ase_empresa_desc})
