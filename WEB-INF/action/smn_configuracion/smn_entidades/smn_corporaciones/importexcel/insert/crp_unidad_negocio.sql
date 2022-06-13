select 
	COALESCE( 
		(select 
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id  
from   
	smn_base.smn_unidades_negocios 
where  
	upper(trim(smn_base.smn_unidades_negocios.uen_nombre)) = upper(trim(${fld:crp_unidad_negocio_desc}))
	), '') as crp_unidad_negocio_ref	