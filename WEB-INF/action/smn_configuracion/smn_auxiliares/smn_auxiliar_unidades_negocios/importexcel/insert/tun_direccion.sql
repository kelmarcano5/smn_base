select 
	smn_base.smn_direccion.smn_direccion_id as tun_direccion_ref 
from   
	smn_base.smn_direccion 
where  
	upper(smn_base.smn_direccion.dir_descripcion) = upper(${fld:tun_direccion_desc})
