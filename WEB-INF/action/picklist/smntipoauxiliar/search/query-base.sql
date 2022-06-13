select	
	smn_base.smn_tipo_auxiliar.*
from
	smn_base.smn_tipo_auxiliar 
where
	smn_base.smn_tipo_auxiliar.smn_tipo_auxiliar_id is not null
and
	smn_base.smn_tipo_auxiliar.tia_idioma='${def:locale}'
	${filter}