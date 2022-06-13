select
		smn_base.smn_entidades_federales.efe_nombre_largo
from
		smn_base.smn_entidades_federales
where
		upper(trim(smn_base.smn_entidades_federales.efe_nombre_largo)) = upper(trim(${fld:efe_nombre_largo}))
