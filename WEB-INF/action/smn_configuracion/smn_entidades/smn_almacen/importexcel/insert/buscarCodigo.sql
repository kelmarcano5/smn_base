select
		smn_base.smn_almacen.alm_codigo
from
		smn_base.smn_almacen
where
		upper(trim(smn_base.smn_almacen.alm_codigo)) = upper(trim(${fld:alm_codigo}))
