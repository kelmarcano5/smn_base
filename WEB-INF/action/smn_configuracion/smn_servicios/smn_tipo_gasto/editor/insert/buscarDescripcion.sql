select
		smn_base.smn_tipo_gasto.tig_descripcion
from
		smn_base.smn_tipo_gasto
where
		upper(smn_base.smn_tipo_gasto.tig_descripcion) = upper(${fld:tig_descripcion})
