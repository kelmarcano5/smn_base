select
		smn_base.smn_monedas.mon_codigo
from
		smn_base.smn_monedas
where
		upper(smn_base.smn_monedas.mon_codigo) = upper(${fld:mon_codigo})
