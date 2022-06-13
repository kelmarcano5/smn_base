select
		smn_base.smn_sucursales.suc_nombre
from
		smn_base.smn_sucursales
where
		upper(trim(smn_base.smn_sucursales.suc_nombre)) = upper(trim(${fld:suc_nombre}))
