select 
	COALESCE( 
		(select 
			smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id  
		from   
			smn_base.smn_auxiliar_sucursales 
		where  
			upper(trim(smn_base.smn_auxiliar_sucursales.trs_nombre)) = upper(trim(${fld:tse_auxiliar_sucursal_desc}))
	), 0) as tse_auxiliar_sucursal_ref
