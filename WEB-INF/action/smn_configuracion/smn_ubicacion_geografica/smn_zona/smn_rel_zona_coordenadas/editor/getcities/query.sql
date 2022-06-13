select
	smn_base.smn_ciudades.smn_ciudades_id as id,
	smn_base.smn_ciudades.ciu_nombre_corto as item
from
	smn_base.smn_ciudades
where
	smn_base.smn_ciudades.ciu_entidades_federales=${fld:id}