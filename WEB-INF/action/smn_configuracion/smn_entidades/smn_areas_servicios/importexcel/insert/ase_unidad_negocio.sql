select 
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id as ase_unidad_negocio_ref 
from   
	smn_base.smn_unidades_negocios 
where  
	upper(smn_base.smn_unidades_negocios.uen_nombre) = upper(${fld:ase_unidad_negocio_desc})
