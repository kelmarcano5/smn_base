select
	smn_base.smn_ciudades.ciu_nombre_corto,
	smn_base.smn_entidades_federales.efe_nombre_corto,
	smn_base.smn_municipios.mun_nombre_corto,
	smn_base.smn_paises.pai_nombre_corto,
	case
	when smn_base.smn_feriados.fer_laborable='S' then '${lbl:b_yes}'
	when smn_base.smn_feriados.fer_laborable='N' then '${lbl:b_not}'
	end as fer_laborable_combo,
	smn_base.smn_feriados.*
from
	smn_base.smn_feriados
	inner join smn_base.smn_ciudades on smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_feriados.fer_ciudad
	left outer join smn_base.smn_entidades_federales on smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_feriados.fer_entidad_federal
	inner join smn_base.smn_municipios on smn_base.smn_municipios.smn_municipios_id = smn_base.smn_feriados.fer_municipio
	left outer join smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = smn_base.smn_feriados.fer_pais
where
	smn_base.smn_feriados.smn_feriados_id = ${fld:id}
