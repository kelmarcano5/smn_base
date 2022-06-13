select
		smn_base.smn_entidades.ent_codigo
from
		smn_base.smn_entidades
where
		upper(trim(smn_base.smn_entidades.ent_codigo)) = upper(trim(${fld:ent_codigo}))
