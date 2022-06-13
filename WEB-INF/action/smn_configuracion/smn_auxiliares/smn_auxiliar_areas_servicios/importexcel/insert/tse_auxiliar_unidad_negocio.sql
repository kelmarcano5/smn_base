select 
	COALESCE( 
		(select 
			smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id  
		from   
			smn_base.smn_auxiliar_unidades_negocios 
		where  
			upper(trim(smn_base.smn_auxiliar_unidades_negocios.tun_nombre)) = upper(trim(${fld:tse_auxiliar_unidad_negocio_desc}))
	), 0) as tse_auxiliar_unidad_negocio_ref
