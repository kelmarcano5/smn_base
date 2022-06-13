select
		smn_base.smn_entidades.ent_descripcion_larga
from
		smn_base.smn_entidades
where
		upper(trim(smn_base.smn_entidades.ent_descripcion_larga)) = upper(trim(${fld:ent_descripcion_larga}))
