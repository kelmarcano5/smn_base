select 
	COALESCE( 
		(select 
			smn_base.smn_sucursales.smn_sucursales_id  
		from   
			smn_base.smn_sucursales 
		where  
			upper(trim(smn_base.smn_sucursales.suc_nombre)) = upper(trim(${fld:alm_sucursal_desc}))
	), '') as alm_sucursal_ref	