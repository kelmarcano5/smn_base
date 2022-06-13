select
	smn_base.smn_paises.pai_nombre_largo,
	smn_base.smn_entidades_federales.*
from
	smn_base.smn_paises, 
	smn_base.smn_entidades_federales
where
	smn_base.smn_entidades_federales.efe_paises=smn_base.smn_paises.smn_paises_id
and
	smn_base.smn_entidades_federales.smn_entidades_federales_id = ${fld:id}
