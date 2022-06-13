select
		smn_base.smn_conexiones.con_descripcion
from
		smn_base.smn_conexiones
where
		upper(smn_base.smn_conexiones.con_descripcion) = upper(${fld:con_descripcion})
