select 
	smn_base.smn_direccion.smn_direccion_id as id, 
	smn_base.smn_direccion.dir_codigo || ' - ' || smn_base.smn_direccion.dir_descripcion as item 
from 
	smn_base.smn_direccion 
where
	upper(smn_base.smn_direccion.dir_categoria) like upper('smn_corporacion_%') 
order by 
	smn_base.smn_direccion.dir_descripcion