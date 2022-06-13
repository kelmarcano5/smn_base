select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_sucursales.*
from
	smn_base.smn_entidades,
	smn_base.smn_sucursales 
where
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_sucursales.smn_entidades_id and
	smn_sucursales_id = ${fld:id} 
	


