select
		smn_base.smn_monedas.mon_nombre
from
		smn_base.smn_monedas
where
		upper(smn_base.smn_monedas.mon_nombre) = upper(${fld:mon_nombre})
