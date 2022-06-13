select
		smn_base.smn_baremos.bar_codigo
from
		smn_base.smn_baremos
where
		upper(smn_base.smn_baremos.bar_codigo) = upper(${fld:bar_codigo})
