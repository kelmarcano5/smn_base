select 
	COALESCE( 
		(select 
			smn_base.smn_unidades_servicios.smn_unidades_servicios_id  
		from   
			smn_base.smn_unidades_servicios 
		where  
			upper(trim(smn_base.smn_unidades_servicios.uns_descripcion)) = upper(trim(${fld:alm_unidad_servicio_desc}))
	), '') as alm_unidad_servicio_ref	