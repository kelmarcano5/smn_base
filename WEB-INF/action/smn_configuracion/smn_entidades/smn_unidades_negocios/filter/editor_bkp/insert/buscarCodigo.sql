select
		smn_base.smn_unidades_negocios.uen_codigo
from
		smn_base.smn_unidades_negocios
where
		upper(smn_base.smn_unidades_negocios.uen_codigo) = upper(${fld:uen_codigo})
