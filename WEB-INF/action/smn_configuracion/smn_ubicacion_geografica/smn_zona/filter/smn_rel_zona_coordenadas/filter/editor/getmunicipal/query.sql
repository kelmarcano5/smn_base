SELECT
	smn_base.smn_municipios.smn_municipios_id as id,
	smn_base.smn_municipios.mun_nombre_corto as item 
FROM
	smn_base.smn_municipios
WHERE
	smn_base.smn_municipios.mun_ciudades = ${fld:id}