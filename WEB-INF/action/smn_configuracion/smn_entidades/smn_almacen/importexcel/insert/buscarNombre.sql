select
		smn_base.smn_almacen.alm_nombre
from
		smn_base.smn_almacen
where
		upper(trim(smn_base.smn_almacen.alm_nombre)) = upper(trim(${fld:alm_nombre}))
