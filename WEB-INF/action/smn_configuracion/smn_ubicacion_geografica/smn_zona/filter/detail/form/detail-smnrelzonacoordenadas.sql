select
	smn_base.smn_rel_zona_coordenadas.*
from
	smn_base.smn_rel_zona_coordenadas,
	smn_base.smn_zona
where
		smn_base.smn_rel_zona_coordenadas.smn_zona_id=smn_base.smn_zona.smn_zona_id and
		smn_base.smn_zona.smn_zona_id=${fld:id}
