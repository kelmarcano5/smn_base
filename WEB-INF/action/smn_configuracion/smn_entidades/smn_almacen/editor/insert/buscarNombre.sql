select
		smn_base.smn_almacen.alm_nombre
from
		smn_base.smn_almacen
where
		upper(smn_base.smn_almacen.alm_nombre) = upper(${fld:alm_nombre})
