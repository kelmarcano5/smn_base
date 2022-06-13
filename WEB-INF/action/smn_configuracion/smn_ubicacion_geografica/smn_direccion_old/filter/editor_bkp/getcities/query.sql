select
	smn_base.smn_ciudades.smn_ciudades_id as id,
	smn_base.smn_ciudades.ciu_codigo || ' - ' || smn_base.smn_ciudades.ciu_nombre_corto as item
from
	smn_base.smn_entidades_federales,
	smn_base.smn_ciudades
where
	smn_base.smn_entidades_federales.efe_paises=(select
													smn_base.smn_paises.smn_paises_id
				                                 from 
				                                    smn_base.smn_paises
				                                 where
				                                    upper(smn_base.smn_paises.pai_nombre_corto)=upper(${fld:id}))
and
	smn_base.smn_ciudades.ciu_entidades_federales=(select
													  smn_base.smn_entidades_federales.smn_entidades_federales_id
				                                   from 
				                                      smn_base.smn_entidades_federales
				                                   where
				                                      upper(smn_base.smn_entidades_federales.efe_nombre_corto)=upper(${fld:id2}))
and
	smn_base.smn_ciudades.ciu_entidades_federales=smn_base.smn_entidades_federales.smn_entidades_federales_id
order by 
	smn_base.smn_ciudades.smn_ciudades_id
