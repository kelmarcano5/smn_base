select
		smn_base.smn_entidades_federales.efe_codigo
from
		smn_base.smn_entidades_federales
where
		upper(trim(smn_base.smn_entidades_federales.efe_codigo)) = upper(trim(${fld:efe_codigo}))
