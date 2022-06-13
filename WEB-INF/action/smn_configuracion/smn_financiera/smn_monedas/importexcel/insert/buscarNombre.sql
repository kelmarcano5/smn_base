select
	smn_base.smn_monedas.mon_nombre
from
	smn_base.smn_monedas
where
	upper(trim(smn_base.smn_monedas.mon_nombre)) = upper(trim(${fld:mon_nombre}))
