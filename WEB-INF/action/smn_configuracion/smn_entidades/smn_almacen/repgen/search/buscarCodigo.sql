select
		smn_base.smn_almacen.alm_codigo
from
		smn_base.smn_almacen
where
		upper(smn_base.smn_almacen.alm_codigo) = upper(${fld:alm_codigo})
