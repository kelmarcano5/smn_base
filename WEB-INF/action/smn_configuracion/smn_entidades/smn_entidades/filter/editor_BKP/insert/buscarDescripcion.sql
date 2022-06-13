select
		smn_base.smn_entidades.ent_descripcion_corta
from
		smn_base.smn_entidades
where
		upper(smn_base.smn_entidades.ent_descripcion_corta) = upper(${fld:ent_descripcion_corta})
