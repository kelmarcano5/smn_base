select
		smn_base.smn_entidades.ent_codigo
from
		smn_base.smn_entidades
where
		upper(smn_base.smn_entidades.ent_codigo) = upper(${fld:ent_codigo})
