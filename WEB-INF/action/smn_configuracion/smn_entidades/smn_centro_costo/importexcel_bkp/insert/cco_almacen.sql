select 
	COALESCE( 
		(select 
			smn_base.smn_almacen.smn_almacen_id  
		from   
			smn_base.smn_almacen 
		where  
			upper(trim(smn_base.smn_almacen.alm_nombre)) = upper(trim(${fld:cco_almacen_desc}))
	), '') as cco_almacen_ref	