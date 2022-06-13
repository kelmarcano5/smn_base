select
		smn_base.smn_entidades_federales.efe_nombre_largo
from
		smn_base.smn_entidades_federales
where
		upper(smn_base.smn_entidades_federales.efe_nombre_largo) = upper(${fld:efe_nombre_largo})
