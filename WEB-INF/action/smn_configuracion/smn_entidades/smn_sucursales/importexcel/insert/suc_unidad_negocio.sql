select 
	COALESCE( 
		(select 
			smn_base.smn_unidades_negocios.smn_unidades_negocios_id  
		from   
			smn_base.smn_unidades_negocios 
		where  
			upper(trim(smn_base.smn_unidades_negocios.uen_nombre)) = upper(trim(${fld:suc_unidad_negocio_desc}))
	), '') as suc_unidad_negocio_ref	