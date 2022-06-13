select replace(
		lpad(${seq:currval@smn_base.seq_smn_direccion} || '',
		16,
		repeat('0',
			   length(${seq:currval@smn_base.seq_smn_direccion} || ''))),
	    ' ', 
	    '') as correlative