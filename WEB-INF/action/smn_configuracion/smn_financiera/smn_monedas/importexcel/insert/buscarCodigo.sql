select
	smn_base.smn_monedas.mon_codigo
from
	smn_base.smn_monedas
where
	upper(trim(smn_base.smn_monedas.mon_codigo)) = upper(trim(${fld:mon_codigo}))
