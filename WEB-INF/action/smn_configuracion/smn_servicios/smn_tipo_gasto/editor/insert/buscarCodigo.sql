select
		smn_base.smn_tipo_gasto.tig_codigo
from
		smn_base.smn_tipo_gasto
where
		upper(smn_base.smn_tipo_gasto.tig_codigo) = upper(${fld:tig_codigo})
