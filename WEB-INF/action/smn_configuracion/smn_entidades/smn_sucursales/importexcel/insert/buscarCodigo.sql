select
		smn_base.smn_sucursales.suc_codigo
from
		smn_base.smn_sucursales
where
		upper(trim(smn_base.smn_sucursales.suc_codigo)) = upper(trim(${fld:suc_codigo}))
