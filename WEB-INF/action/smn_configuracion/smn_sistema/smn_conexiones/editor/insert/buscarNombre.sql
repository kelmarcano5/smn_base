select
		smn_base.smn_conexiones.con_nombre_bd
from
		smn_base.smn_conexiones
where
		upper(smn_base.smn_conexiones.con_nombre_bd) = upper(${fld:con_nombre_bd})
