select
		smn_base.smn_sucursales.suc_codigo
from
		smn_base.smn_sucursales
where
		upper(smn_base.smn_sucursales.suc_codigo) = upper(${fld:suc_codigo})
