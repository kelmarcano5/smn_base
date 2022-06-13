select
	smn_base.smn_ciudades.ciu_nombre_corto,
	smn_base.smn_entidades_federales.efe_nombre_corto,
	smn_base.smn_municipios.mun_nombre_corto,
	smn_base.smn_paises.pai_nombre_corto,
		smn_base.smn_feriados.smn_feriados_id,
	case
	when smn_base.smn_feriados.fer_laborable='S' then '${lbl:b_yes}'
	when smn_base.smn_feriados.fer_laborable='N' then '${lbl:b_not}'
	end as fer_laborable_combo,
	smn_base.smn_feriados.fer_codigo,
	smn_base.smn_feriados.fer_descripcion,
	smn_base.smn_feriados.fer_pais,
	smn_base.smn_feriados.fer_entidad_federal,
	smn_base.smn_feriados.fer_ciudad,
	smn_base.smn_feriados.fer_municipio,
	smn_base.smn_feriados.fer_feriado,
	smn_base.smn_feriados.fer_laborable,
	smn_base.smn_feriados.fer_fecha_registro,
		smn_base.smn_feriados.smn_feriados_id
from
	smn_base.smn_feriados
	inner join smn_base.smn_ciudades on smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_feriados.fer_ciudad
	left outer join smn_base.smn_entidades_federales on smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_feriados.fer_entidad_federal
	inner join smn_base.smn_municipios on smn_base.smn_municipios.smn_municipios_id = smn_base.smn_feriados.fer_municipio
	left outer join smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = smn_base.smn_feriados.fer_pais
order by
			smn_base.smn_feriados.smn_feriados_id desc
