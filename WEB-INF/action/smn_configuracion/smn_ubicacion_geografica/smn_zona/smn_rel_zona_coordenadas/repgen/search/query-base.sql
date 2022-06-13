select
		smn_base.smn_rel_zona_coordenadas.smn_rel_zona_coordenadas_id,
	${field}
from
	smn_base.smn_rel_zona_coordenadas
where
		smn_base.smn_rel_zona_coordenadas.smn_rel_zona_coordenadas_id is not null
	${filter}
	
	
