select
		smn_base.smn_auxiliar_datos_laborales.smn_auxiliar_datos_laborales_id,
	smn_base.smn_clase_auxiliar.cla_codigo||'-'||smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_auxiliar_persona_natural.ant_nombres||'-'||smn_base.smn_auxiliar_persona_natural.ant_apellidos as smn_auxiliar_rf,
	smn_base.smn_auxiliar_datos_laborales.adl_nombre_compania,
	smn_base.smn_auxiliar_datos_laborales.adl_rif,
	smn_base.smn_auxiliar_datos_laborales.adl_departamento,
	smn_base.smn_auxiliar_datos_laborales.adl_cargo,
	smn_base.smn_paises.pai_codigo||'-'||smn_base.smn_paises.pai_nombre_corto as smn_paises_rf,
	smn_base.smn_entidades_federales.efe_codigo||'-'|| smn_base.smn_entidades_federales.efe_nombre_corto as smn_entidades_federales_rf,
	smn_base.smn_ciudades.ciu_codigo||'-'||smn_base.smn_ciudades.ciu_nombre_corto as smn_ciudades_rf,
	smn_base.smn_auxiliar_datos_laborales.adl_direccion,
	smn_base.smn_auxiliar_datos_laborales.adl_telefono_oficina,
	smn_base.smn_auxiliar_datos_laborales.adl_email,
	smn_base.smn_auxiliar_datos_laborales.adl_fecha_registro
	
from
	smn_base.smn_auxiliar_datos_laborales
left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_datos_laborales.smn_clase_auxiliar_rf
left outer join smn_base.smn_auxiliar_persona_natural on smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id = smn_base.smn_auxiliar_datos_laborales.smn_auxiliar_rf
left outer join smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = smn_base.smn_auxiliar_datos_laborales.smn_paises_rf
left outer join smn_base.smn_entidades_federales on smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_auxiliar_datos_laborales.smn_entidades_federales_rf
LEFT OUTER JOIN smn_base.smn_ciudades on smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_auxiliar_datos_laborales.smn_ciudades_rf
where
	smn_auxiliar_datos_laborales_id = ${fld:id}
