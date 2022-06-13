select
	*
from
	smn_base.fields	
where
	smn_base.fields.action_root = '/action/smn_configuracion/smn_entidades/smn_estructura_organizacional/repgen'
order by
	smn_base.fields.orden asc
	