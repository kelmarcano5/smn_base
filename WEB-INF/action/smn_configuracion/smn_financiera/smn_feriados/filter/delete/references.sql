select 
	smn_base.smn_paises.smn_paises_id as refid 
from 
	smn_base.smn_paises 
where 
	smn_base.smn_paises.smn_paises_id = ${fld:id}
union
select 
	smn_base.smn_entidades_federales.smn_entidades_federales_id as refid 
from 
	smn_base.smn_entidades_federales 
where 
	smn_base.smn_entidades_federales.smn_entidades_federales_id = ${fld:id}
union
select 
	smn_base.smn_ciudades.smn_ciudades_id as refid 
from 
	smn_base.smn_ciudades 
where 
	smn_base.smn_ciudades.smn_ciudades_id = ${fld:id}
union
select 
	smn_base.smn_municipios.smn_municipios_id as refid 
from 
	smn_base.smn_municipios 
where 
	smn_base.smn_municipios.smn_municipios_id = ${fld:id}
