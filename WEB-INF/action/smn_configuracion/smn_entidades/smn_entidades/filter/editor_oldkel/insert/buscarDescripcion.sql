select
		smn_base.smn_entidades.ent_descripcion_larga
from
		smn_base.smn_entidades
where
		upper(smn_base.smn_entidades.ent_descripcion_larga) = upper(${fld:ent_descripcion_larga})
