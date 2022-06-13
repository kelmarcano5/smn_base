select
		smn_base.smn_entidades_federales.efe_codigo
from
		smn_base.smn_entidades_federales
where
		upper(smn_base.smn_entidades_federales.efe_codigo) = upper(${fld:efe_codigo})
