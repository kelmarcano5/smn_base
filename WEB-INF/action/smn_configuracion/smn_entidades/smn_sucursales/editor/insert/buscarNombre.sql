select
		smn_base.smn_sucursales.suc_nombre
from
		smn_base.smn_sucursales
where
		upper(smn_base.smn_sucursales.suc_nombre) = upper(${fld:suc_nombre})
