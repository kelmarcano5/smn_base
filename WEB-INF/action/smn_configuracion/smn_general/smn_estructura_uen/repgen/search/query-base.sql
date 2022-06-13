select
	smn_base.smn_estructura_uen.smn_estructura_uen_id,
	${field}
from
	smn_base.smn_estructura_uen
where
	smn_base.smn_estructura_uen.smn_estructura_uen_id is not null
and
	smn_base.smn_estructura_uen.eue_idioma = '${def:locale}'
and
	smn_base.smn_estructura_uen.eue_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_estructura_uen.smn_estructura_uen_id desc
	
	
