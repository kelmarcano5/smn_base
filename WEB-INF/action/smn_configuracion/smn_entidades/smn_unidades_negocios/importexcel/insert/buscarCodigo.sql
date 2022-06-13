select
		smn_base.smn_unidades_negocios.uen_codigo
from
		smn_base.smn_unidades_negocios
where
		upper(trim(smn_base.smn_unidades_negocios.uen_codigo)) = upper(trim(${fld:uen_codigo}))
